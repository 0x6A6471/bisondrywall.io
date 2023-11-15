open Tyxml.Html
module Ty = Bisondrywall_io.Ty
open Components.Photos_marquee

let home_body (photos : photo list) =
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
              ; i ~a:[ a_class [ "ml-2 ph ph-paper-plane-tilt" ] ] []
              ]
          ]
      ]
  ; main
      ~a:[ a_class [ "mt-8 w-full space-y-24 md:mt-16 md:space-y-48" ] ]
      [ Components.Offer_cards.offer_cards ()
      ; Components.Photos_marquee.photos_marquee photos
      ; Components.Testomonials.testomonials ()
      ; Components.Callout.callout ()
      ]
  ; Components.Footer.footer ()
  ]
;;

let home_page photos =
  let page =
    html
      (head
         (title (txt "Bison Drywall"))
         [ link ~rel:[ `Stylesheet ] ~href:"/styles/output.css" ()
         ; link
             ~rel:[ `Icon ]
             ~href:"/assets/favicons/android-chrome-192x192.png"
             ()
         ; link
             ~rel:[ `Icon ]
             ~href:"/assets/favicons/android-chrome-512x512.png"
             ()
         ; link ~rel:[ `Icon ] ~href:"/assets/favicons/apple-touch-icon.png" ()
         ; link ~rel:[ `Icon ] ~href:"/assets/favicons/browserconfig.xml" ()
         ; link ~rel:[ `Icon ] ~href:"/assets/favicons/favicon-16x16.png" ()
         ; link ~rel:[ `Icon ] ~href:"/assets/favicons/favicon-32x32.png" ()
         ; link ~rel:[ `Icon ] ~href:"/assets/favicons/favicon.ico" ()
         ; link ~rel:[ `Icon ] ~href:"/assets/favicons/mstile-150x150.png" ()
         ; link ~rel:[ `Icon ] ~href:"/assets/favicons/safari-pinned-tab.svg" ()
         ; link ~rel:[ `Icon ] ~href:"/assets/favicons/site.webmanifest" ()
         ; script ~a:[ a_src "https://unpkg.com/@phosphor-icons/web" ] (txt "")
         ])
      (body
         ~a:[ a_class [ "bg-gray-900 text-base text-gray-100 md:text-lg" ] ]
         (home_body photos))
  in
  Dream.html (Ty.html_to_string page)
;;
