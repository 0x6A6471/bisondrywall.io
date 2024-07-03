@react.component
let make = (~name: string, ~className: option<string>=?, ~size: string="16") => {
  <svg
    className={switch className {
    | Some(className) => className
    | None => ""
    }}
    height=size
    width=size>
    <use href={`/sprite.svg#${name}`} height=size width=size />
  </svg>
}
