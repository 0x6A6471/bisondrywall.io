import offerings from '../data/offerings';

export default function OfferCards() {
  return (
    <div className="mx-auto max-w-screen-xl px-8 xl:px-0">
      <h2 className="mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 md:text-5xl">
        What we offer
      </h2>

      <div className="grid grid-cols-1 gap-8 md:grid-cols-2 xl:grid-cols-3">
        {offerings.map((offering, idx) => (
          <div
            key={offering.id}
            className={`${
              idx === 2 ? 'md:col-span-2 xl:col-span-1' : ''
            } rounded-[40px] bg-gray-700 p-8`}
          >
            <h3 className="text-center text-xl font-bold text-yellow-base md:text-3xl">
              {offering.title}
            </h3>

            {offering.items.map(item => (
              <div key={item.id} className="mt-6 flex md:mt-12">
                <span>{item.icon}</span>

                <div className="ml-4">
                  <h4 className="mb-3 text-lg font-medium text-gray-50 md:text-xl">
                    {item.label}
                  </h4>
                  <p>{item.description}</p>
                </div>
              </div>
            ))}
          </div>
        ))}
      </div>
    </div>
  );
}
