/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
  images: {
    domains: [
      'scontent-bos5-1.xx.fbcdn.net',
      'scontent-iad3-2.xx.fbcdn.net',
      'scontent-lga3-1.xx.fbcdn.net',
      'images.unsplash.com',
    ],
  },
};

module.exports = nextConfig;
