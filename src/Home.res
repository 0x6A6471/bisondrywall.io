@react.component
let make = () => {
  <>
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
          <a
            href="mailto:bisondrywalllc.com"
            className="btn-grad mt-8 inline-flex items-center rounded-xl px-8 py-4 font-medium text-white md:mt-16">
            {"Contact Us"->React.string}
          </a>
        </div>
      </div>
    </div>
    <main className="mt-8 w-full space-y-24 md:mt-16 md:space-y-48">
      <OfferCards />
    </main>
  </>
}
