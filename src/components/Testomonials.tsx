import { Star } from 'phosphor-react';

import testomonials from '../data/testomonials';

export default function Testomonials() {
  return (
    <div>
      <h2 className="mb-16 text-center text-5xl font-bold text-gray-50">
        Loved by the people of Wisconsin
      </h2>

      <div className="grid grid-cols-1 gap-8 md:grid-cols-2">
        {testomonials.map(testomonial => (
          <div key={testomonial.id} className="rounded-[40px] bg-gray-700 p-8">
            <div className="flex">
              <div className="flex-shrink-0">
                <span className="inline-flex h-14 w-14 items-center justify-center rounded-full bg-gray-500">
                  <span className="text-xl font-medium leading-none text-yellow-base opacity-75">
                    {testomonial.initials}
                  </span>
                </span>
              </div>
              <div className="ml-3">
                <h3 className="mb-1 text-xl font-medium text-gray-50">
                  {testomonial.name}
                </h3>
                <div className="flex items-center space-x-0.5">
                  {[...Array(5)].map((_, idx) => (
                    <Star key={idx} color="#D7B732" size={16} weight="fill" />
                  ))}
                </div>
                <p className="mt-4">{testomonial.review}</p>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
