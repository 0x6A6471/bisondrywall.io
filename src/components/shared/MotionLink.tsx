import Link from 'next/link';

import { ArrowRight } from 'phosphor-react';
import { motion } from 'framer-motion';

const iconVariants = {
  hover: {
    x: 4,
  },
};

type Props = {
  href: string;
  label: string;
};

export default function MotionLink({ href, label }: Props) {
  return (
    <Link href={href} passHref>
      <motion.a
        whileHover="hover"
        className="float-right mt-4 inline-flex items-center text-gray-50"
      >
        {label}
        <motion.span variants={iconVariants}>
          <ArrowRight className="ml-2 text-yellow-base" />
        </motion.span>
      </motion.a>
    </Link>
  );
}
