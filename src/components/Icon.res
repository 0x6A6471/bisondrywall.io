@react.component
let make = (~id: string) => {
  Console.log(id)
  <svg className="w-6 h-6">
    <use href={`/sprite.svg#${id}`} />
  </svg>
}
