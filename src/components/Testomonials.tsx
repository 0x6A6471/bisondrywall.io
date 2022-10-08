import { Star } from 'phosphor-react';

import MotionLink from './shared/MotionLink';
import testomonials from '../data/testomonials';

export default function Testomonials() {
  return (
    <div className="mx-auto max-w-screen-xl px-8 xl:px-0">
      <h2 className="mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 md:text-5xl">
        Loved by the people of Wisconsin
      </h2>

      <div className="grid grid-cols-1 gap-8 md:grid-cols-2">
        {testomonials.map(testomonial => (
          <div key={testomonial.id} className="rounded-[40px] bg-gray-700 p-8">
            <div className="flex">
              <div className="flex-shrink-0">
                <span className="inline-flex h-14 w-14 items-center justify-center rounded-full bg-gray-500">
                  <span className="text-lg font-medium leading-none text-yellow-base opacity-75 md:text-xl">
                    {testomonial.initials}
                  </span>
                </span>
              </div>
              <div className="ml-3">
                <h3 className="mb-1 text-lg font-medium text-gray-50 md:text-xl">
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

      <MotionLink
        href="https://www.google.com/search?q=bisondrywall+appleton+wi&sourceid=chrome&ie=UTF-8#lrd=0x8803b936501f9d47:0x39d4b236558d2ad4,1,,,"
        label="View all reviews"
      />
    </div>
  );
}
