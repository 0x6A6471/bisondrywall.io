(lang dune 3.11)

(name bisondrywall_io)

(generate_opam_files true)

(source
 (github jakequinter/bisondrywall_io))

(authors "Jake Quinter")

(maintainers "Jake Quinter")

(license MIT)

(documentation https://url/to/documentation)

(package
 (name bisondrywall_io)
 (synopsis "Bison Drywall website")
 (description "Bison Drywall website")
 (depends
   (ocaml (>= "5.1.0"))
   (dune (>= "3.11.0"))
   cohttp-lwt-unix
   dotenv  
   dream
   tyxml
   lwt 
   ppx_deriving ppx_deriving_yojson
   yojson)
 (tags
 (topics "to describe" your project)))
; 
