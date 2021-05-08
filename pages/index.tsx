import Head from 'next/head';
import Image from 'next/image';
import Link from 'next/link';
import { RiFacebookCircleFill } from 'react-icons/ri';
import { motion } from 'framer-motion';

import { styled } from '../stitches.config';

const Box = styled('div', {});

const Text = styled('p', {
  fontFamily: '$system',
  color: '#868686',
  marginY: 75,
  textAlign: 'center'
});

const Logo = styled('a', {
  color: '#3B82F6',
  display: 'block',
  marginTop: 75,
  cursor: 'pointer',
  width: '30px',
  marginX: 'auto',
  '&:hover': {
    color: '#5492F7'
  }
});

export default function Home() {
  return (
    <Box
      css={{
        display: 'flex',
        minHeight: '100vh',
        justifyContent: 'center',
        alignItems: 'center'
      }}
    >
      <Head>
        <title>Bison Drywall</title>
      </Head>
      <motion.div
        initial={{ y: '-100vh' }}
        animate={{ y: 0 }}
        transition={{
          delay: 0.5,
          type: 'spring',
          stiffness: 120
        }}
      >
        <Text as="h1">Coming soon...</Text>
        <Image src="/logo.png" height="200" width="500" />
        <Link href="https://m.facebook.com/bisondrywall/" passHref>
          <Logo>
            <RiFacebookCircleFill size="30" style={{ cursor: 'pointer' }} />
          </Logo>
        </Link>
      </motion.div>
    </Box>
  );
}
