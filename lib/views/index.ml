module Ty = Bisondrywall_io.Ty

let home_body _ =
  let open Tyxml in
  Html.
    [ div
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
                      [ "text-4xl font-bold text-white sm:text-5xl md:text-7xl"
                      ]
                  ]
                [ txt "Bison Drywall" ]
            ; h2
                ~a:
                  [ a_class [ "mt-2 text-lg text-white opacity-50 md:text-2xl" ]
                  ]
                [ txt "Whatever your needs, Bison Drywall can help" ]
            ; a
                ~a:
                  [ a_href "mailto:bisondrywalllc.com"
                  ; a_class
                      [ "btn-grad mt-8 inline-flex items-center rounded-xl \
                         px-8 py-4 font-medium text-white md:mt-16"
                      ]
                  ]
                [ txt "Contact Us"
                ; i ~a:[ a_class [ "ml-2 ph ph-paper-plane-tilt" ] ] []
                ]
            ]
        ]
    ; main
        ~a:[ a_class [ "mt-8 w-full space-y-24 md:mt-16 md:space-y-48" ] ]
        [ Components.Offer_cards.offer_cards () ]
    ]
;;

let home_page _ =
  let open Tyxml.Html in
  let page =
    html
      (head
         (title (txt "Bison Drywall"))
         [ link ~rel:[ `Stylesheet ] ~href:"/styles/output.css" ()
         ; script ~a:[ a_src "https://unpkg.com/@phosphor-icons/web" ] (txt "")
         ])
      (body
         ~a:[ a_class [ "bg-gray-900 text-base text-gray-100 md:text-lg" ] ]
         (home_body ()))
  in
  Dream.html (Ty.html_to_string page)
;;
