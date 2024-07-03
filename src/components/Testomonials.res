type t = {
  id: int,
  initials: string,
  name: string,
  review: string,
}

let testomonials = [
  {
    id: 1,
    initials: "AM",
    name: "Alex M.",
    review: "I would absolutely recommend using this Company. Great communication, \
         extremely fair priced, went above and beyond what was asked to make \
         sure the job was done correctly. Without a doubt, we will be reaching \
         back out to them in the future.",
  },
  {
    id: 2,
    initials: "ZD",
    name: "Zach D.",
    review: "The guys were great, asked questions when they needed to and did high \
         quality work exactly to what I asked for. Anything that would have \
         been an issue was communicated with me effectively. Very satisfied \
         overall.",
  },
  {
    id: 3,
    initials: "PM",
    name: "Pat M.",
    review: "Bison Drywall is a company that is professional,  has an excellent \
         talented team, and great prompt communication.  They were great to \
         work with and turned our drywall disasters  into a beautiful place.  \
         Thanks!",
  },
  {
    id: 4,
    initials: "BM",
    name: "Ben M.",
    review: "Ethan and his crew were great. Explained the process and continually \
         checked in if we had an questions or concerns. Great overall \
         experience and I highly recommend him and the whole Bison crew!",
  },
]

@react.component
let make = () => {
  <div className="mx-auto max-w-screen-xl px-8 2xl:px-0">
    <h2 className="mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 md:text-5xl">
      {"Loved by the people of Wisconsin"->React.string}
    </h2>
    <div className="grid grid-cols-1 gap-8 md:grid-cols-2">
      {testomonials
      ->Array.map(t =>
        <div key={string_of_int(t.id)} className="rounded-[40px] bg-gray-700 p-8">
          <div className="flex">
            <div className="flex-shrink-0">
              <span
                className="inline-flex h-14 w-14 items-center justify-center rounded-full bg-gray-500">
                <span
                  className="text-lg font-medium leading-none text-yellow-base opacity-75 md:text-xl">
                  {React.string(t.initials)}
                </span>
              </span>
            </div>
            <div className="ml-3">
              <h3 className="mb-1 text-lg font-medium text-gray-50 md:text-xl">
                {React.string(t.name)}
              </h3>
              <div className="flex items-center space-x-0.5">
                <Icon name="star" className="fill-yellow-base" />
                <Icon name="star" className="fill-yellow-base" />
                <Icon name="star" className="fill-yellow-base" />
                <Icon name="star" className="fill-yellow-base" />
                <Icon name="star" className="fill-yellow-base" />
              </div>
              <p className="mt-4"> {React.string(t.review)} </p>
            </div>
          </div>
        </div>
      )
      ->React.array}
    </div>
    <Next.Link
      className="hover-arrow float-right mt-4 inline-flex items-center text-gray-50"
      href="https://www.google.com/search?q=bisondrywall+appleton+wi&sourceid=chrome&ie=UTF-8#lrd=0x8803b936501f9d47:0x39d4b236558d2ad4,1,,,">
      {"All reviews"->React.string}
      <Icon name="arrow-right" className="fill-yellow-base ml-2" size="18" />
    </Next.Link>
  </div>
}
