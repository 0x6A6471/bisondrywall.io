/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
  images: {
    domains: ['scontent-bos5-1.xx.fbcdn.net'],
  },
};

module.exports = nextConfig;
