@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{} => <Home />
  | list{"privacy"} => <Privacy />
  | _ => React.null
  }
}
