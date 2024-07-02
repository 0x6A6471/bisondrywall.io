type photo = {"link": string, "alt_text": string, "source": string}

module Response = {
  type t<'data>
  @send external json: t<'data> => promise<'data> = "json"
}

// A binding to our globally available `fetch` function. `fetch` is a
// standardized function to retrieve data from the network that is available in
// all modern browsers.
@val @scope("globalThis")
external fetch: (
  string,
  'params,
) => promise<Response.t<{"data": Nullable.t<array<photo>>, "error": Nullable.t<string>}>> = "fetch"

type props = {photos: array<photo>}

let default = (props: props) => {
  <>
    <Next.Head>
      <title> {"Bison Drywall"->React.string} </title>
    </Next.Head>
    <div className="jumbotron">
      <div className="p-4">
        <img src="/logo.png" width="94" height="40" alt="Bison Drywall logo" />
        <div className="px-8 pt-24 text-center sm:px-0">
          <h1 className="text-4xl font-bold text-white sm:text-5xl md:text-7xl">
            {"Bison Drywall"->React.string}
          </h1>
          <h2 className="mt-2 text-lg text-white opacity-50 md:text-2xl">
            {"Whatever your needs, Bison Drywall can help"->React.string}
          </h2>
          <Next.Link
            href="mailto:bisondrywalllc.com"
            className="btn-grad mt-8 inline-flex items-center rounded-xl px-8 py-4 font-medium text-white md:mt-16">
            {"Contact Us"->React.string}
          </Next.Link>
        </div>
      </div>
    </div>
    <main className="mt-8 w-full space-y-24 md:mt-16 md:space-y-48">
      <OfferCards />
      <PhotosMarquee photos=props.photos />
      <Testomonials />
      <Callout />
    </main>
    <footer className="mt-24 md:mt-48 border-t border-gray-600 px-8 2xl:px-0">
      <div
        className="mx-auto flex max-w-7xl flex-col items-start justify-between py-4 xs:flex-row xs:items-center">
        <div>
          <img src="/logo.png" width="47" height="20" alt="Bison Drywall logo" />
        </div>
        <div
          className="mt-4 flex flex-col space-x-0 space-y-4 xs:mt-0 xs:flex-row xs:space-y-0 xs:space-x-4">
          <Next.Link
            href="mailto:bisondrywalllc.com"
            className="mx-0 text-xs text-gray-300 hover:text-gray-200 xs:mx-2">
            {"Contact Us"->React.string}
          </Next.Link>
          <Next.Link
            href="/privacy" className="mx-0 text-xs text-gray-300 hover:text-gray-200 xs:mx-2">
            {"Privacy"->React.string}
          </Next.Link>
          <Next.Link
            href="mailto:bisondrywalllc.com"
            className="mx-0 text-xs text-gray-300 hover:text-gray-200 xs:mx-2">
            {"Facebook"->React.string}
          </Next.Link>
        </div>
      </div>
    </footer>
  </>
}

let getServerSideProps = async _ctx => {
  let token = Env.facebookApiToken

  let result = try {
    let response = await fetch(
      "https://graph.facebook.com/v14.0/112096071040835/photos?limit=100&fields=link,alt_text,source",
      {
        "method": "GET",
        "headers": {
          "Content-Type": "application/json",
          "Authorization": "Bearer " ++ token,
        },
      },
    )

    let data = await response->Response.json

    switch Nullable.toOption(data["error"]) {
    | Some(msg) => Error(msg)
    | None =>
      switch Nullable.toOption(data["data"]) {
      | Some(photos) => Ok(photos)
      | None => Error("No photos found")
      }
    }
  } catch {
  | _ => Error("Unexpected network error occurred")
  }

  let props = switch result {
  | Ok(data) => {
      "photos": data,
    }
  | Error(_msg) => {
      "photos": [],
    }
  }

  Promise.resolve({"props": props})
}
