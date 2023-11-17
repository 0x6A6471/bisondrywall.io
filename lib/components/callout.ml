open Tyxml.Html

let callout _ =
  div
    ~a:[ a_class [ "callout mx-8 p-12 text-center md:p-24" ] ]
    [ h2
        ~a:
          [ a_class
              [ "mb-4 bg-gradient-to-r from-yellow-dark via-black \
                 to-yellow-dark bg-clip-text py-1 text-3xl font-bold \
                 text-gray-50 text-transparent md:text-5xl"
              ]
          ]
        [ txt "Get started with Bison Drywall\n" ]
    ; p
        ~a:[ a_class [ "mx-auto max-w-xl text-white opacity-80" ] ]
        [ txt
            "Bison drywall is here to help with whatever you need. Reach out \
             to us\n\
            \        today!"
        ]
    ; a
        ~a:
          [ a_href "mailto:bisondrywalllc.com"
          ; a_class
              [ "mt-8 inline-flex items-center rounded-xl bg-black px-8 py-4 \
                 font-medium text-white hover:scale-105 \
                 hover:transition-transform duration-200 ease-in-out"
              ]
          ]
        [ txt "Contact Us"
        ; i ~a:[ a_class [ "ml-2 ph ph-paper-plane-tilt" ] ] []
        ]
    ]
;;
