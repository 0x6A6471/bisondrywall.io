open Tyxml.Html
module Ty = Bisondrywall_io.Ty

type item =
  { icon : Html_types.i Tyxml.Html.elt
  ; label : string
  ; description : string
  }

type offering =
  { id : int
  ; title : string
  ; items : item list
  }

let ph_icon name =
  i
    ~a:
      [ a_class [ "ph"; name ]; a_style "font-size: 1.875rem; color: #D7B732;" ]
    []
;;

let offerings =
  [ { id = 1
    ; title = "Drywall installation"
    ; items =
        [ { icon = ph_icon "ph ph-house-line"
          ; label = "Residential"
          ; description =
              "Home extensions, wall additions, or simple patches, we work \
               quickly to accomodate any of your drywall needs."
          }
        ; { icon = ph_icon "ph-buildings"
          ; label = "Commercial"
          ; description =
              "Looking for upgrades to the office? We help professional \
               businesses with additions and upgrade their suites."
          }
        ]
    }
  ; { id = 2
    ; title = "Drywall & plaster repair"
    ; items =
        [ { icon = ph_icon "ph-disc"
          ; label = "Drywall cracks & holes"
          ; description =
              "Our team fixes damaged drywall caused by moisture, poor \
               installation, or even the settling of the structure."
          }
        ; { icon = ph_icon "ph-fire"
          ; label = "Fire, smoke & water damage"
          ; description =
              "Recent fire or pipe burst? We remove the lingering smell of \
               smoke or mildew."
          }
        ]
    }
  ; { id = 3
    ; title = "Drywall finishing"
    ; items =
        [ { icon = ph_icon "ph-paint-brush-household"
          ; label = "Plaster finishing"
          ; description =
              "Unfinished drywall doesn’t look the best. Let our professionals \
               help get your drywall ready for paint or paper."
          }
        ; { icon = ph_icon "ph-wall"
          ; label = "Texture drywall"
          ; description =
              "Our team can help with any kind of texture you are looking \
               for—skip trowel, orange peel, sand, knockdown, and smooth!"
          }
        ]
    }
  ]
;;

let offering_items_to_html item =
  div
    ~a:[ a_class [ "mt-6 flex md:mt-12" ] ]
    [ span [ item.icon ]
    ; div
        ~a:[ a_class [ "ml-4" ] ]
        [ h4
            ~a:
              [ a_class [ "mb-3 text-lg font-medium text-gray-50 md:text-xl" ] ]
            [ txt item.label ]
        ; p [ txt item.description ]
        ]
    ]
;;

let offering_to_html offering =
  div
    ~a:
      [ a_class
          (if offering.id == 3
           then [ "md:col-span-2 xl:col-span-1 rounded-[40px] bg-gray-700 p-8" ]
           else [ "rounded-[40px] bg-gray-700 p-8" ])
      ]
    ([ h3
         ~a:
           [ a_class
               [ "text-center text-xl font-bold text-yellow-base md:text-3xl" ]
           ]
         [ txt offering.title ]
     ]
     @ List.map offering_items_to_html offering.items)
;;

let offer_cards _ =
  div
    ~a:[ a_class [ "mx-auto max-w-screen-xl px-8 2xl:px-0" ] ]
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
          [ a_class [ "grid grid-cols-1 gap-8 md:grid-cols-2 xl:grid-cols-3" ] ]
        (List.map offering_to_html offerings)
    ]
;;
