let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router
       [ Dream.get "/" (fun _ -> Views.Index.home_page ())
       ; Dream.get "/about" (fun _ -> Dream.html "About")
       ; Dream.get "/styles/**" @@ Dream.static "./styles"
       ; Dream.get "/assets/**" @@ Dream.static "./assets"
       ]
;;
