open Tyxml.Html
module Ty = Bisondrywall_io.Ty

type item =
  { id : float
  ; icon : Html_types.i Tyxml.Html.elt
  ; label : string
  ; description : string
  }

type offering =
  { id : int
  ; title : string
  ; items : item list
  }

let offerings =
  [ { id = 1
    ; title = "Drywall installation"
    ; items =
        [ { id = 1.1
          ; icon =
              i
                ~a:
                  [ a_class [ "ph ph-house-line" ]
                  ; a_style "font-size: 1.875rem; color: #D7B732;"
                  ]
                []
          ; label = "Residential"
          ; description =
              "Home extensions, wall additions, or simple patches, we work \
               quickly to accomodate any of your drywall needs."
          }
        ]
    }
  ]
;;

let offering_items_to_html item =
  let open Tyxml in
  Html.(
    div
      ~a:[ a_class [ "mt-6 flex md:mt-12" ] ]
      [ span [ item.icon ]
      ; div
          ~a:[ a_class [ "ml-4" ] ]
          [ h4
              ~a:
                [ a_class [ "mb-3 text-lg font-medium text-gray-50 md:text-xl" ]
                ]
              [ txt item.label ]
          ; p [ txt item.description ]
          ]
      ])
;;

let offering_to_html offering =
  let open Tyxml in
  Html.(
    div
      ~a:[ Html.a_class [ "rounded-[40px] bg-gray-700 p-8" ] ]
      ([ h3
           ~a:
             [ a_class
                 [ "text-center text-xl font-bold text-yellow-base md:text-3xl"
                 ]
             ]
           [ txt offering.title ]
       ]
       @ List.map offering_items_to_html offering.items))
;;

let offer_cards _ =
  let open Tyxml in
  Html.(
    div
      ~a:[ a_class [ "mx-auto max-w-screen-xl px-8 xl:px-0" ] ]
      [ h2
          ~a:
            [ a_class
                [ "mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 \
                   md:text-5xl"
                ]
            ]
          [ txt "What we offer" ]
      ; div
          ~a:
            [ a_class [ "grid grid-cols-1 gap-8 md:grid-cols-2 xl:grid-cols-3" ]
            ]
          (List.map offering_to_html offerings)
      ])
;;
