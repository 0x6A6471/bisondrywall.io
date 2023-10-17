open Tyxml.Html

let top_photos =
  [ "https://source.unsplash.com/s86WhGhp25Y"
  ; "https://source.unsplash.com/NoRsyXmHGpI"
  ; "https://source.unsplash.com/uEFombN3J5U"
  ; "https://source.unsplash.com/MyVH8UVJDBE"
  ; "https://source.unsplash.com/IoINVPQe738"
  ]
;;

let bottom_photos =
  [ "https://source.unsplash.com/UOavP_Z38lE"
  ; "https://source.unsplash.com/UZe35tk5UoA"
  ; "https://source.unsplash.com/7-xmprXdiAk"
  ; "https://source.unsplash.com/PV9QQFDB5W8"
  ; "https://source.unsplash.com/TSYQ5stQVjg"
  ]
;;

let photo ~src =
  img
    ~a:
      [ a_class
          [ "aspect-square max-w-[clamp(10rem,28vmin,20rem)] rounded-md \
             object-cover shadow-md"
          ]
      ]
    ~src
    ~alt:""
    ()
;;

let top_marquee =
  div
    ~a:
      [ a_class [ "pointer-events-none relative flex gap-10 overflow-hidden" ] ]
    [ div
        ~a:
          [ a_class
              [ "animate-marquee flex min-w-full shrink-0 items-center \
                 justify-around gap-10"
              ]
          ]
        (List.map (fun src -> photo ~src) top_photos)
    ; div
        ~a:
          [ a_class
              [ "animate-marquee flex min-w-full shrink-0 items-center \
                 justify-around gap-10"
              ]
          ]
        (List.map (fun src -> photo ~src) top_photos)
    ]
;;

let bottom_marquee =
  div
    ~a:
      [ a_class
          [ "pointer-events-none relative mt-10 flex gap-10 overflow-hidden" ]
      ]
    [ div
        ~a:
          [ a_class
              [ "animate-marquee flex min-w-full shrink-0 items-center \
                 justify-around gap-10 [animation-direction:reverse]"
              ]
          ]
        (List.map (fun src -> photo ~src) bottom_photos)
    ; div
        ~a:
          [ a_class
              [ "animate-marquee flex min-w-full shrink-0 items-center \
                 justify-around gap-10 [animation-direction:reverse]"
              ]
          ]
        (List.map (fun src -> photo ~src) bottom_photos)
    ]
;;

let photos_marquee _ =
  div
    [ h2
        ~a:
          [ a_class
              [ "mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 \
                 md:max-w-xl md:px-8 md:text-left md:text-5xl"
              ]
          ]
        [ txt "Take a look at some before, during, and after photos of our work"
        ]
    ; div
        ~a:
          [ a_class [ "relative flex flex-col justify-center overflow-hidden" ]
          ]
        [ top_marquee; bottom_marquee ]
    ]
;;
