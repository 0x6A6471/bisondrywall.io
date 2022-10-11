import Link from 'next/link';
import { PaperPlaneTilt } from 'phosphor-react';
import { motion } from 'framer-motion';

export default function Callout() {
  return (
    <div className="callout mx-8 p-12 text-center md:p-24">
      <h2 className="mb-4 bg-gradient-to-r from-yellow-dark via-black to-yellow-dark bg-clip-text py-1 text-3xl font-bold text-gray-50 text-transparent md:text-5xl">
        Get started with Bison Drywall
      </h2>
      <p className="mx-auto max-w-xl text-white opacity-80">
        Bison drywall is here to help with whatever you need. Reach out to us
        today!
      </p>
      <Link href="mailto:bisondrywalllc.com" passHref>
        <motion.a
          whileHover={{ scale: 1.1 }}
          className="mt-8 inline-flex items-center rounded-xl bg-black px-8 py-4 font-medium text-white"
        >
          Contact us
          <PaperPlaneTilt className="ml-4 inline" size={20} />
        </motion.a>
      </Link>

      <style jsx>{`
        .callout {
          background: linear-gradient(
            270deg,
            rgba(215, 183, 50, 0.25) 0%,
            rgba(215, 183, 50, 0.5) 78%,
            rgba(215, 183, 50, 0.75) 100%
          );
          box-shadow: 0 10px 40px 0 #463c13;
          border-radius: 40px;
        }
      `}</style>
    </div>
  );
}
