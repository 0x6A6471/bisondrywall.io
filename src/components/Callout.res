@react.component
let make = () => {
  <div className="mx-auto max-w-screen-xl px-8 2xl:px-0">
    <div className="callout p-12 text-center md:p-24">
      <h2
        className="mb-4 bg-gradient-to-r from-yellow-dark via-black to-yellow-dark bg-clip-text py-1 text-3xl font-bold text-gray-50 text-transparent md:text-5xl">
        {"Get started with Bison Drywall"->React.string}
      </h2>
      <p className="mx-auto max-w-xl text-white opacity-80">
        {"Bison drywall is here to help with whatever you need. Reach out to us
        today!"->React.string}
      </p>
      <a
        className="mt-8 inline-flex items-center rounded-xl bg-black px-8 py-4 font-medium text-white hover:scale-105 hover:transition-transform duration-200 ease-in-out">
        {"Contact us"->React.string}
        <Icon name="paper-plane-tilt" className="fill-white ml-2" />
      </a>
    </div>
  </div>
}
