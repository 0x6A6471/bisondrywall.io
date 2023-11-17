(* make privacy page *)
open Tyxml.Html
module Ty = Bisondrywall_io.Ty

let tertiary_page_link ~href ~label =
  a
    ~a:
      [ a_href href; a_class [ "text-yellow-base underline hover:opacity-80" ] ]
    [ txt label ]
;;

let list_item ~callout ~text =
  li
    [ span ~a:[ a_class [ "font-medium text-gray-50" ] ] [ txt callout ]
    ; txt text
    ]
;;

let sub_section ~heading ?(id = None) ?(synopsis = None) children =
  let attrs =
    match id with
    | None -> [ a_class [ "space-y-4" ] ]
    | Some id -> [ a_id id; a_class [ "space-y-4" ] ]
  in
  let in_short =
    match synopsis with
    | None -> []
    | Some synopsis ->
      [ p
          ~a:[ a_class [ "italic" ] ]
          [ span ~a:[ a_class [ "font-medium" ] ] [ txt "In Short: " ]
          ; txt synopsis
          ]
      ]
  in
  section
    ~a:attrs
    ((h2
        ~a:
          [ a_class
              [ "mb-8 text-xl font-bold uppercase text-white md:text-2xl" ]
          ]
        [ txt heading ]
      :: in_short)
     @ children)
;;

let privacy_body _ =
  [ main
      ~a:[ a_class [ "mx-auto max-w-4xl space-y-20 px-8 text-base lg:px-0" ] ]
      [ div
          ~a:[ a_class [ "pt-20" ] ]
          [ h1
              ~a:
                [ a_class
                    [ "text-3xl font-bold uppercase text-white md:text-5xl" ]
                ]
              [ txt "Privacy notice" ]
          ; p [ txt "Last updated December 01, 2022" ]
          ]
      ; section
          ~a:[ a_class [ "space-y-4" ] ]
          [ p
              [ txt
                  "Thank you for choosing to be part of our community at Bison \
                   Drywall LLC. (\"Company\", \"we\", \"us\", \"our\"). We are \
                   committed to protecting your personal information and your \
                   right to privacy. If you have any questions or concerns \
                   about this privacy notice, or our practices with regards to \
                   your personal information, please contact us at "
              ; tertiary_page_link
                  ~href:"mailto:bisondrywallllc@gmail.com"
                  ~label:"bisondrywallllc@gmail.com"
              ; txt "."
              ]
          ; p
              [ txt "When you visit our website "
              ; tertiary_page_link
                  ~href:"https://bisondrywall.io"
                  ~label:"https://bisondrywall.io"
              ; txt
                  " (the \"Website\"), and more generally, use any of our \
                   services (the \"Services\", which include the Website), we \
                   appreciate that you are trusting us with your personal \
                   information. We take your privacy very seriously. In this \
                   privacy notice, we seek to explain to you in the clearest \
                   way possible what information we collect, how we use it and \
                   what rights you have in relation to it. We hope you take \
                   some time to read through it carefully, as it is important. \
                   If there are any terms in this privacy notice that you do \
                   not agree with, please discontinue use of our Services \
                   immediately."
              ]
          ; p
              [ txt
                  "This privacy notice applies to all information collected \
                   through our Services (which, as described above, includes \
                   our Website), as well as, any related services, sales, \
                   marketing or events."
              ]
          ; p
              ~a:[ a_class [ "font-bold text-gray-50" ] ]
              [ txt
                  "Please read this privacy notice carefully as it will help \
                   you understand what we do with the information that we \
                   collect."
              ]
          ]
      ; sub_section
          ~heading:"TABLE OF CONTENTS"
          [ ol
              ~a:[ a_class [ "ml-8 list-outside list-decimal space-y-1" ] ]
              [ li
                  [ tertiary_page_link
                      ~href:"#1"
                      ~label:"How do we use your information?"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#2"
                      ~label:"Will your information be shared with anyone?"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#3"
                      ~label:"Is your information transferred internationally?"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#4"
                      ~label:"How long do we keep your information?"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#5"
                      ~label:"How do we keep your information safe?"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#6"
                      ~label:"What are your privacy rights?"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#7"
                      ~label:"Controls for do-not-track features"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#8"
                      ~label:
                        "Do California residents have specific privacy rights?"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#9"
                      ~label:"Do we make updates to this notice?"
                  ]
              ; li
                  [ tertiary_page_link
                      ~href:"#10"
                      ~label:"How can you contact us about this notice?"
                  ]
              ]
          ]
      ; sub_section
          ~heading:"How do we use your information?"
          ~id:(Some "#1")
          ~synopsis:
            (Some
               "Yes, we will update this notice as necessary to stay compliant \
                with relevant laws.")
          [ p
              [ txt
                  "We use personal information collected via our Website for a \
                   variety of business purposes described below. We process \
                   your personal information for these purposes in reliance on \
                   our legitimate business interests, in order to enter into \
                   or perform a contract with you, with your consent, and/or \
                   for compliance with our legal obligations. We indicate the \
                   specific processing grounds we rely on next to each purpose \
                   listed below."
              ]
          ; div
              [ p [ txt "We use the information we collect or receive:" ]
              ; ul
                  ~a:[ a_class [ "ml-8 list-outside list-disc space-y-1" ] ]
                  [ list_item
                      ~callout:"To send administrative information to you. "
                      ~text:
                        "We may use your personal information to send you \
                         product, service and new feature information and/or \
                         information about changes to our terms, conditions, \
                         and policies."
                  ]
              ]
          ]
      ]
  ]
;;

let privacy_page _ =
  let page =
    html
      (head
         (title (txt "Bison Drywall | Privacy"))
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
         (privacy_body ()))
  in
  Dream.html (Ty.html_to_string page)
;;
