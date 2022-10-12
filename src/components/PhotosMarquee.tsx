import Image from 'next/image';
import { motion } from 'framer-motion';

import { Data } from '../types/photos';
import MotionLink from './shared/MotionLink';

const marqueeVariants = {
  animate: {
    x: [0, -15400],
    transition: {
      x: {
        repeat: Infinity,
        repeatType: 'loop',
        duration: 100,
        ease: 'linear',
      },
    },
  },
};

type Props = {
  topPhotos: Data[];
  bottomPhotos: Data[];
};

export default function PhotosMarquee({ topPhotos, bottomPhotos }: Props) {
  return (
    <div className="8">
      <h2 className="mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 md:max-w-xl md:px-8 md:text-left md:text-5xl">
        Take a look at some before, during, and after photos of our work
      </h2>

      <div className="flex overflow-x-hidden">
        <div>
          <motion.div
            className="track"
            variants={marqueeVariants}
            animate="animate"
          >
            <div className="mb-2 flex gap-2">
              {topPhotos.map(photo => (
                <div key={photo.id} className="relative">
                  <Image
                    className="rounded-xl"
                    src={photo.images[0].source}
                    height="400"
                    width="300"
                    alt="Bison Drywall photo"
                    layout="fixed"
                  />
                </div>
              ))}
            </div>
            <div className="mb-2 flex gap-2">
              {bottomPhotos.map(photo => (
                <div key={photo.id} className="relative">
                  <Image
                    className="rounded-xl"
                    src={photo.images[0].source}
                    height="400"
                    width="300"
                    alt="Bison Drywall photo"
                    layout="fixed"
                  />
                </div>
              ))}
            </div>
          </motion.div>
        </div>
      </div>

      <div className="px-8">
        <MotionLink
          href="https://m.facebook.com/bisondrywall"
          label="Check us out on Facebook"
        />
      </div>
    </div>
  );
}
