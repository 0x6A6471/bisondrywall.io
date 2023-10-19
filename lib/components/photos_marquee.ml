open Tyxml.Html

type photo =
  { alt_text : string
  ; id : string
  ; source : string
  }

let format_json_string str =
  let open Yojson.Safe in
  str |> from_string |> pretty_to_string
;;

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

let photo_el ~src =
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

let top_marquee photos =
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
        (List.map (fun photo -> photo_el ~src:photo.source) photos)
    ; div
        ~a:
          [ a_class
              [ "animate-marquee flex min-w-full shrink-0 items-center \
                 justify-around gap-10"
              ]
          ]
        (List.map (fun photo -> photo_el ~src:photo.source) photos)
    ]
;;

let bottom_marquee photos =
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
        (List.map (fun photo -> photo_el ~src:photo.source) photos)
    ; div
        ~a:
          [ a_class
              [ "animate-marquee flex min-w-full shrink-0 items-center \
                 justify-around gap-10 [animation-direction:reverse]"
              ]
          ]
        (List.map (fun photo -> photo_el ~src:photo.source) photos)
    ]
;;

let split_list lst n =
  let rec aux i acc = function
    | [] -> List.rev acc, []
    | h :: t as l -> if i = 0 then List.rev acc, l else aux (i - 1) (h :: acc) t
  in
  aux n [] lst
;;

let photos_marquee (photos : photo list) =
  let half = List.length photos / 2 in
  let top_photos, bottom_photos = split_list photos half in
  match photos with
  | [] -> div []
  | _ :: _ ->
    div
      [ h2
          ~a:
            [ a_class
                [ "mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 \
                   md:max-w-xl md:px-8 md:text-left md:text-5xl"
                ]
            ]
          [ txt
              "Take a look at some before, during, and after photos of our work"
          ]
      ; div
          ~a:
            [ a_class
                [ "relative flex flex-col justify-center overflow-hidden" ]
            ]
          [ top_marquee top_photos; bottom_marquee bottom_photos ]
      ]
;;
