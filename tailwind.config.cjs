const config = {
  mode: 'jit',
  purge: ['./src/**/*.{html,js,svelte,ts}'],
  theme: {
    extend: {
      colors: {
        yellow500: '#D7B732',
        yellow800: '#514513',

        gray900: '#222328',
        gray800: '#3B3B3B',
        gray700: '#515151',
        gray600: '#626262',
        gray500: '#7E7E7E',
        gray400: '#9E9E9E',
        gray300: '#B1B1B1',
        gray200: '#CFCFCF',
        gray100: '#E1E1E1',
        gray50: '#F7F7F7',
      },
      screens: {
        xs: '450px',
        // => @media (min-width: 450px) { ... }
      },
    },
  },
  plugins: [require('@tailwindcss/forms')],
};

module.exports = config;
