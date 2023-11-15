open Tyxml.Html

let link ~href ~label =
  a
    ~a:
      [ a_href href
      ; a_class [ "mx-0 text-xs text-gray-300 hover:text-gray-200 xs:mx-2" ]
      ]
    [ txt label ]
;;

let footer _ =
  footer
    ~a:[ a_class [ "mt-24 md:mt-48 border-t border-gray-600 px-8 2xl:px-0" ] ]
    [ div
        ~a:
          [ a_class
              [ "mx-auto flex max-w-7xl flex-col items-start justify-between \
                 py-4 xs:flex-row xs:items-center"
              ]
          ]
        [ div
            [ img
                ~a:[ a_width 47; a_height 20 ]
                ~src:"/assets/logo.png"
                ~alt:"Bison Image"
                ()
            ]
        ; div
            ~a:
              [ a_class
                  [ "mt-4 flex flex-col space-x-0 space-y-4 xs:mt-0 \
                     xs:flex-row xs:space-y-0 xs:space-x-4"
                  ]
              ]
            [ link ~href:"mailto:bisondrywallllc@gmail.com" ~label:"Contact us"
            ; link ~href:"https://m.facebook.com/bisondrywall" ~label:"Facebook"
            ; link ~href:"/privacy" ~label:"Privacy"
            ; link ~href:"/terms" ~label:"Terms"
            ]
        ]
    ]
;;
