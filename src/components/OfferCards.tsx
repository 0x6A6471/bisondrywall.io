import offerings from '../data/offerings';

export default function OfferCards() {
  return (
    <div>
      <h2 className="mb-16 text-center text-5xl font-bold text-gray-50">
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
            <h3 className="mb-12 text-center text-3xl font-bold text-yellow-base">
              {offering.title}
            </h3>

            {offering.items.map(item => (
              <div key={item.id} className="mt-12 flex">
                <span>{item.icon}</span>

                <div className="ml-4">
                  <h4 className="mb-3 text-xl font-medium text-gray-50">
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
