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
    ]
;;
