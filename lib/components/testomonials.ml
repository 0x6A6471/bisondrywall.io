open Tyxml.Html

type testomonial =
  { id : int
  ; initials : string
  ; name : string
  ; review : string
  }

let data =
  [ { id = 1
    ; initials = "AM"
    ; name = "Alex M."
    ; review =
        "I would absolutely recommend using this Company. Great communication, \
         extremely fair priced, went above and beyond what was asked to make \
         sure the job was done correctly. Without a doubt, we will be reaching \
         back out to them in the future."
    }
  ; { id = 2
    ; initials = "ZD"
    ; name = "Zach D."
    ; review =
        "The guys were great, asked questions when they needed to and did high \
         quality work exactly to what I asked for. Anything that would have \
         been an issue was communicated with me effectively. Very satisfied \
         overall."
    }
  ; { id = 3
    ; initials = "PM"
    ; name = "Pat M."
    ; review =
        "Bison Drywall is a company that is professional,  has an excellent \
         talented team, and great prompt communication.  They were great to \
         work with and turned our drywall disasters  into a beautiful place.  \
         Thanks!"
    }
  ; { id = 4
    ; initials = "BM"
    ; name = "Ben M."
    ; review =
        "Ethan and his crew were great. Explained the process and continually \
         checked in if we had an questions or concerns. Great overall \
         experience and I highly recommend him and the whole Bison crew!"
    }
  ]
;;

let star _ =
  i ~a:[ a_class [ "ph-fill ph-star" ]; a_style "color: #D7B732;" ] []
;;

let testomonials_to_html testomonial =
  div
    ~a:[ a_class [ "rounded-[40px] bg-gray-700 p-8" ] ]
    [ div
        ~a:[ a_class [ "flex" ] ]
        [ div
            ~a:[ a_class [ "flex-shrink-0" ] ]
            [ span
                ~a:
                  [ a_class
                      [ "inline-flex h-14 w-14 items-center justify-center \
                         rounded-full bg-gray-500"
                      ]
                  ]
                [ span
                    ~a:
                      [ a_class
                          [ "text-lg font-medium leading-none text-yellow-base \
                             opacity-75 md:text-xl"
                          ]
                      ]
                    [ txt testomonial.initials ]
                ]
            ]
        ; div
            ~a:[ a_class [ "ml-3" ] ]
            [ h3
                ~a:
                  [ a_class
                      [ "mb-1 text-lg font-medium text-gray-50 md:text-xl" ]
                  ]
                [ txt testomonial.name ]
            ; div
                ~a:[ a_class [ "flex items-center space-x-0.5" ] ]
                (List.init 5 (fun _ -> star ()))
            ; p ~a:[ a_class [ "mt-4" ] ] [ txt testomonial.review ]
            ]
        ]
    ]
;;

let testomonials _ =
  div
    ~a:[ a_class [ "mx-auto max-w-screen-xl px-8 2xl:px-0" ] ]
    [ h2
        ~a:
          [ a_class
              [ "mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 \
                 md:text-5xl"
              ]
          ]
        [ txt "Loved by the people of Wisconsin" ]
    ; div
        ~a:[ a_class [ "grid grid-cols-1 gap-8 md:grid-cols-2" ] ]
        (List.map testomonials_to_html data)
    ; div
        [ a
            ~a:
              [ a_class
                  [ "hover-arrow float-right mt-4 inline-flex items-center \
                     text-gray-50"
                  ]
              ; a_href
                  "https://www.google.com/search?q=bisondrywall+appleton+wi&sourceid=chrome&ie=UTF-8#lrd=0x8803b936501f9d47:0x39d4b236558d2ad4,1,,,"
              ]
            [ txt "View all reviews"
            ; i
                ~a:
                  [ a_class [ "ph ph-arrow-right ml-2" ]
                  ; a_style "color: #D7B732;"
                  ]
                []
            ]
        ]
    ]
;;
