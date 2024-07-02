type photo = {"link": string, "alt_text": string, "source": string}

@react.component
let make = (~photos: array<photo>) => {
  <div>
    <h2
      className="mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 md:max-w-xl md:px-8 md:text-left md:text-5xl">
      {"Take a look at some before, during, and after photos of our work"->React.string}
    </h2>
    <div className="relative flex flex-col justify-center overflow-hidden">
      <div className="pointer-events-none relative  flex gap-x-4 overflow-hidden">
        <div
          className="animate-marquee flex min-w-full shrink-0 items-center justify-around gap-x-4 
      ">
          {photos
          ->Array.slice(~start=0, ~end=49)
          ->Array.map(photo =>
            <img
              key={photo["source"]}
              src={photo["source"]}
              alt={photo["alt_text"]}
              className="h-[400px] w-[300px] max-w-[clamp(20rem,28vmin,20rem)] rounded-md object-cover shadow-md"
            />
          )
          ->React.array}
        </div>
      </div>
      <div className="pointer-events-none relative mt-4 flex gap-x-4 overflow-hidden">
        <div
          className="animate-marquee flex min-w-full shrink-0 items-center justify-around gap-x-4 [animation-direction:reverse]">
          {photos
          ->Array.slice(~start=49, ~end=100)
          ->Array.map(photo =>
            <img
              key={photo["source"]}
              src={photo["source"]}
              alt={photo["alt_text"]}
              className="h-[400px] w-[300px] max-w-[clamp(20rem,28vmin,20rem)] rounded-md object-cover shadow-md"
            />
          )
          ->React.array}
        </div>
      </div>
      <div className="px-8">
        <a
          className="hover-arrow float-right mt-4 inline-flex items-center text-gray-50"
          href="https://m.facebook.com/bisondrywall">
          {"Check us out on Facebook"->React.string}
          <i className="ph ph-arrow-right ml-2 text-yellow-base" />
        </a>
      </div>
    </div>
  </div>
}
