export default {
  content: [
    "./src/components/**/*.res",
    "./src/layouts/**/*.res",
    "./src/*.res",
  ],
  theme: {
    extend: {
      colors: {
        gray: {
          50: "#EDEDED",
          100: "#A0A0A0",
          200: "#7E7E7E",
          300: "#707070",
          400: "#3E3E3E",
          500: "#343434",
          600: "#2E2E2E",
          700: "#232323",
          800: "#1C1C1C",
          900: "#161616",
        },
        yellow: {
          base: "#D7B732",
          dark: "#514513",
        },
      },
      keyframes: {
        marquee: {
          "0%": { transform: "translateX(0)" },
          "100%": { transform: "translateX(-100%)" },
        },
      },
      animation: {
        marquee: "marquee 150s linear infinite",
        "marquee-reverse": "marquee 150s linear infinite reverse",
      },
      keyframes: {
        marquee: {
          from: {
            transform: "translateX(0)",
          },
          to: {
            transform: "translateX(calc(-100% - 2.5rem))",
          },
        },
      },
    },
    screens: {
      xs: "450px",
      sm: "640px",
      md: "768px",
      lg: "1024px",
      xl: "1280px",
      "2xl": "1536px",
    },
  },

  variants: {
    width: ["responsive"],
  },
  plugins: [],
};
