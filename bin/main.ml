open Lwt.Syntax
open Cohttp
open Cohttp_lwt_unix
open Yojson.Basic.Util
open Components.Photos_marquee

let get_required_env var =
  match Stdlib.Sys.getenv var with
  | "" -> Fmt.failwith "Empty $%s" var
  | value -> value
  | exception _ -> Fmt.failwith "Missing $%s" var
;;

(* Load required environment variables *)
let () = Dotenv.export () |> ignore
let fb_api_token = get_required_env "FACEBOOK_API_TOKEN"

let photo_of_json json =
  { alt_text = json |> member "alt_text" |> to_string
  ; id = json |> member "id" |> to_string
  ; source = json |> member "source" |> to_string
  }
;;

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
      ~query:[ "limit", [ "100" ]; "fields", [ "link,alt_text,source" ] ]
  in
  let* resp, body = Client.get ~headers uri in
  let code = resp |> Response.status |> Code.code_of_status in
  if Code.is_success code
  then
    let* body_str = Cohttp_lwt.Body.to_string body in
    let json = Yojson.Basic.from_string body_str in
    let photos = json |> member "data" |> to_list |> List.map photo_of_json in
    Lwt.return (Some photos)
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
           | None -> Views.Index.home_page [])
       ; Dream.get "/privacy" (fun _ -> Dream.html "Privacy")
       ; Dream.get "/terms" (fun _ -> Dream.html "Terms")
       ; Dream.get "/styles/**" @@ Dream.static "./styles"
       ; Dream.get "/assets/**" @@ Dream.static "./assets"
       ; Dream_livereload.route ()
       ]
;;
