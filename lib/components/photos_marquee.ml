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

let photo_el ~src =
  img
    ~a:
      [ a_class
          [ "h-[400px] w-[300px] max-w-[clamp(20rem,28vmin,20rem)] rounded-md \
             object-cover shadow-md"
          ]
      ]
    ~src
    ~alt:""
    ()
;;

let photo_marquee ~direction ~margin_top photos =
  div
    ~a:
      [ a_class
          [ Printf.sprintf
              "pointer-events-none relative %s flex gap-x-4 overflow-hidden"
              margin_top
          ]
      ]
    [ div
        ~a:
          [ a_class
              [ Printf.sprintf
                  "animate-marquee flex min-w-full shrink-0 items-center \
                   justify-around gap-x-4 %s"
                  direction
              ]
          ]
        (List.map (fun photo -> photo_el ~src:photo.source) photos)
    ; div
        ~a:
          [ a_class
              [ Printf.sprintf
                  "animate-marquee flex min-w-full shrink-0 items-center \
                   justify-around gap-x-4 %s"
                  direction
              ]
          ]
        (List.map (fun photo -> photo_el ~src:photo.source) photos)
    ]
;;

let top_marquee photos = photo_marquee ~direction:"" ~margin_top:"" photos

let bottom_marquee photos =
  photo_marquee
    ~direction:"[animation-direction:reverse]"
    ~margin_top:"mt-4"
    photos
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
          [ top_marquee top_photos
          ; bottom_marquee bottom_photos
          ; div
              ~a:[ a_class [ "px-8" ] ]
              [ a
                  ~a:
                    [ a_class
                        [ "hover-arrow float-right mt-4 inline-flex \
                           items-center text-gray-50"
                        ]
                    ; a_href "https://m.facebook.com/bisondrywall"
                    ]
                  [ txt "Check us out on Facebook"
                  ; i
                      ~a:
                        [ a_class [ "ph ph-arrow-right ml-2" ]
                        ; a_style "color: #D7B732;"
                        ]
                      []
                  ]
              ]
          ]
      ]
;;
