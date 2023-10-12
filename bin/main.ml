let elt_to_string elt = Fmt.str "%a" (Tyxml.Html.pp_elt ()) elt

let index_body _ =
  let open Tyxml in
  Html.(
    div
      [ h1
          ~a:[ a_class [ "text-4xl text-pink-500 font-semibold" ] ]
          [ txt "Bison Drywall" ]
      ; img
          ~a:[ a_width 94; a_height 40 ]
          ~src:"/assets/logo.png"
          ~alt:"Bison Image"
          ()
      ])
;;

let index _ =
  let open Tyxml.Html in
  let page =
    html
      (head
         (title (txt "Bison Drywall"))
         [ script ~a:[ a_src "https://cdn.tailwindcss.com" ] (txt "") ])
      (body [ index_body () ])
  in
  Dream.html (elt_to_string page)
;;

let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router
       [ Dream.get "/" (fun _ -> index ())
       ; Dream.get "/about" (fun _ -> Dream.html "About")
       ; Dream.get "/assets/**" @@ Dream.static "./assets"
       ]
;;
