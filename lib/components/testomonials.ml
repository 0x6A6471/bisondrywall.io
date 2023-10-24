open Tyxml.Html

let testomonials _ =
  div
    ~a:[ a_class [ "mx-auto max-w-screen-xl px-8 xl:px-0" ] ]
    [ h2
        ~a:
          [ a_class
              [ "mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 \
                 md:text-5xl"
              ]
          ]
        [ txt "Loved by the people of Wisconsin" ]
    ; div ~a:[ a_class [ "grid grid-cols-1 gap-8 md:grid-cols-2" ] ] []
    ]
;;
