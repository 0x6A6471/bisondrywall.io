module Ty = Bisondrywall_io.Ty

let home_body _ =
  let open Tyxml in
  Html.(
    div
      ~a:[ a_class [ "jumbotron" ] ]
      [ div
          ~a:[ a_class [ "p-4" ] ]
          [ img
              ~a:[ a_width 94; a_height 40 ]
              ~src:"/assets/logo.png"
              ~alt:"Bison Image"
              ()
          ]
      ; div
          ~a:[ a_class [ "px-8 pt-24 text-center sm:px-0" ] ]
          [ h1
              ~a:
                [ a_class
                    [ "text-4xl font-bold text-white sm:text-5xl md:text-7xl" ]
                ]
              [ txt "Bison Drywall" ]
          ; h2
              ~a:
                [ a_class [ "mt-2 text-lg text-white opacity-50 md:text-2xl" ] ]
              [ txt "Whatever your needs, Bison Drywall can help" ]
          ; a
              ~a:
                [ a_href "mailto:bisondrywalllc.com"
                ; a_class
                    [ "btn-grad mt-8 inline-flex items-center rounded-xl px-8 \
                       py-4 font-medium text-white md:mt-16"
                    ]
                ]
              [ txt "Contact Us"
              ; img
                  ~a:[ a_class [ "ml-4" ]; a_width 20; a_height 20 ]
                  ~src:"/assets/paper_plane.svg"
                  ~alt:"paper plane"
                  ()
              ]
          ]
      ])
;;

let home_page _ =
  let open Tyxml.Html in
  let page =
    html
      (head
         (title (txt "Bison Drywall"))
         [ link ~rel:[ `Stylesheet ] ~href:"/styles/output.css" ()
           (* ; script ~a:[ a_src "https://cdn.tailwindcss.com" ] (txt "") *)
         ])
      (body
         ~a:[ a_class [ "bg-gray-900 text-base text-gray-100 md:text-lg" ] ]
         [ home_body () ])
  in
  Dream.html (Ty.elt_to_string page)
;;
