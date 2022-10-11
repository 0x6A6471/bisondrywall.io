import { useEffect, useState } from 'react';
import Image from 'next/image';
import { motion } from 'framer-motion';

import MotionLink from './shared/MotionLink';

type Image = {
  height: number;
  width: number;
  source: string;
};

type Data = {
  id: number;
  alt_text: string;
  link: string;
  images: Image[];
};

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

export default function PhotosMarquee() {
  const [firstPhotos, setFirstPhotos] = useState<Data[]>([]);
  const [secondPhotos, setSecondPhotos] = useState<Data[]>([]);

  useEffect(() => {
    const fetchFacebookPhotos = async () => {
      const response = await fetch(
        'https://graph.facebook.com/112096071040835/photos?limit=100&fields=link,alt_text,images',
        {
          method: 'GET',
          headers: {
            Authorization: `Bearer ${process.env.NEXT_PUBLIC_FACEBOOK_ACCESS_TOKEN}`,
          },
        }
      );

      const photos = await response.json();
      console.log('fetchFacebookPhotos', photos);

      if (photos.data) {
        setFirstPhotos(photos.data.slice(0, 50));
        setSecondPhotos(photos.data.slice(50));
      }
    };

    fetchFacebookPhotos();
  }, []);

  return (
    <div className="8">
      <h2 className="mb-8 text-center text-3xl font-bold text-gray-50 md:mb-16 md:max-w-xl md:px-8 md:text-left md:text-5xl">
        Take a look at some before, during, and afer photos of our work
      </h2>

      <div className="flex overflow-x-auto ">
        <div className="marquee">
          <motion.div
            className="track"
            variants={marqueeVariants}
            animate="animate"
          >
            <div className="flex gap-2">
              {firstPhotos.map(photo => (
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
            <div className="flex gap-2">
              {secondPhotos.map(photo => (
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
