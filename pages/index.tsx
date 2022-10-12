import type { GetStaticProps, NextPage } from 'next';
import Head from 'next/head';
import Image from 'next/image';
import Link from 'next/link';
import { PaperPlaneTilt } from 'phosphor-react';

import { Data } from '../src/types/photos';
import Callout from '../src/components/Callout';
import Footer from '../src/components/Footer';
import OfferCards from '../src/components/OfferCards';
import PhotosMarquee from '../src/components/PhotosMarquee';
import Testomonials from '../src/components/Testomonials';

type Props = {
  topPhotos: Data[];
  bottomPhotos: Data[];
};

const Home: NextPage<Props> = ({ topPhotos, bottomPhotos }) => {
  return (
    <>
      <Head>
        <title>Bison Drywall</title>
        <meta
          name="description"
          content="A drywall company who strives to give an honest, high quality product and service."
        />
      </Head>

      <div className="jumbotron">
        <div className="p-4">
          <Image
            src="/static/images/logo.png"
            alt="Bison Drywall logo"
            width={94}
            height={40}
          />
        </div>

        <div className="px-8 pt-24 text-center sm:px-0">
          <h1 className="text-4xl font-bold text-white sm:text-5xl md:text-7xl">
            Bison Drywall
          </h1>
          <h2 className="mt-2 text-lg text-white opacity-50 md:text-2xl">
            Whatever your needs, Bison Drywall can help
          </h2>

          <Link href="mailto:bisondrywalllc.com" passHref>
            <a className="btn-grad mt-8 inline-flex items-center rounded-xl px-8 py-4 font-medium text-white md:mt-16">
              Contact us
              <PaperPlaneTilt className="ml-4 inline" size={20} />
            </a>
          </Link>
        </div>
      </div>

      <main className="mt-8 w-full space-y-24 md:mt-16 md:space-y-48">
        <OfferCards />
        <PhotosMarquee topPhotos={topPhotos} bottomPhotos={bottomPhotos} />
        <Testomonials />
        <Callout />
      </main>

      <Footer />

      <style jsx>{`
        .jumbotron {
          height: 550px;
          background: radial-gradient(
            circle at 50% -50%,
            #ddc253 0%,
            #161616 90%
          );
        }

        @media (min-width: 767px) {
          .jumbotron {
            background: radial-gradient(
              circle at 50% -50%,
              #ddc253 0%,
              #161616 80%
            );
          }
        }

        @media (min-width: 1280px) {
          .jumbotron {
            background: radial-gradient(
              circle at 50% -50%,
              #ddc253 0%,
              #161616 70%
            );
          }
        }

        @media (min-width: 1536px) {
          .jumbotron {
            background: radial-gradient(
              circle at 50% -50%,
              #ddc253 0%,
              #161616 55%
            );
          }
        }

        .btn-grad {
          background-image: linear-gradient(
            to right,
            #86721f 0%,
            #d7b732 51%,
            #86721f 100%
          );
          transition: 0.5s;
          background-size: 200% auto;
          box-shadow: 0 0 20px #201e12;
        }

        .btn-grad:hover {
          background-position: right center; /* change the direction of the change here */
          text-decoration: none;
        }
      `}</style>
    </>
  );
};

export default Home;

export const getStaticProps: GetStaticProps = async () => {
  const response = await fetch(
    'https://graph.facebook.com/112096071040835/photos?limit=100&fields=link,alt_text,images',
    {
      method: 'GET',
      headers: {
        Authorization: `Bearer ${process.env.NEXT_PUBLIC_FACEBOOK_ACCESS_TOKEN}`,
        'Content-Type': 'application/json',
      },
    }
  );

  const photos = await response.json();

  const topPhotos = photos.data.slice(0, 50);
  const bottomPhotos = photos.data.slice(50);

  return {
    props: {
      topPhotos,
      bottomPhotos,
    },
  };
};
