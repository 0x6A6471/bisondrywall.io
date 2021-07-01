const config = {
  mode: 'jit',
  purge: ['./src/**/*.{html,js,svelte,ts}'],
  theme: {
    extend: {
      colors: {
        yellow500: '#D7B732',
        yellow800: '#514513',
      },
    },
  },
  plugins: [],
};

module.exports = config;
