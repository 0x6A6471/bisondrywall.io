module.exports = {
  content: ['./pages/**/*.{js,ts,jsx,tsx}', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      colors: {
        gray: {
          50: '#EDEDED',
          100: '#A0A0A0',
          200: '#7E7E7E',
          300: '#707070',
          400: '#3E3E3E',
          500: '#343434',
          600: '#2E2E2E',
          700: '#232323',
          800: '#1C1C1C',
          900: '#161616',
        },

        yellow: {
          base: '#D7B732',
          dark: '#514513',
        },
      },
    },
  },
  plugins: [require('prettier-plugin-tailwindcss')],
};
