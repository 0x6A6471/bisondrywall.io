type t = {"link": string, "alt_text": string, "source": string}

@react.component
let make: (~photos: array<t>) => Jsx.element
