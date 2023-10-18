open Lwt.Syntax
open Cohttp
open Cohttp_lwt_unix

let get_required_env var =
  match Stdlib.Sys.getenv var with
  | "" -> Fmt.failwith "Empty $%s" var
  | value -> value
  | exception _ -> Fmt.failwith "Missing $%s" var
;;

(* Load required environment variables *)
let () = Dotenv.export () |> ignore
let fb_api_token = get_required_env "FACEBOOK_API_TOKEN"

let headers =
  Cohttp.Header.init ()
  |> fun h -> Cohttp.Header.add h "Authorization" ("Bearer " ^ fb_api_token)
;;

let get_photos _ =
  let uri =
    Uri.make
      ()
      ~scheme:"https"
      ~host:"graph.facebook.com"
      ~path:"112096071040835/photos"
      ~query:[ "limit", [ "100" ]; "fields", [ "link,alt_text,images" ] ]
  in
  let* resp, body = Client.get ~headers uri in
  let code = resp |> Response.status |> Code.code_of_status in
  if Code.is_success code
  then
    let* body_str = Cohttp_lwt.Body.to_string body in
    Lwt.return (Some body_str)
  else Lwt.return None
;;

let () =
  Dream.run
  @@ Dream.logger
  @@ Dream_livereload.inject_script ()
  @@ Dream.router
       [ Dream.get "/" (fun _ ->
           let* photos = get_photos () in
           match photos with
           | Some photos -> Views.Index.home_page photos
           | None ->
             Dream.json
               {|{"error":"An error occurred while fetching the photos."}|})
       ; Dream.get "/about" (fun _ -> Dream.html "About")
       ; Dream.get "/styles/**" @@ Dream.static "./styles"
       ; Dream.get "/assets/**" @@ Dream.static "./assets"
       ; Dream_livereload.route ()
       ]
;;
