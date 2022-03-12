const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './config/initializers/simple_form_tailwindcss.rb'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        'comfortaa': ['Comfortaa'],
      },
      padding: {
        '15': '3.75rem',
        '78': '18.75rem'
      },
      screens: {
        '3xl': '1920px'
      },
      fontSize: {
        '2xxl': '1.75rem',
        '3xxl': '2rem',
        '4xxl': '2.75rem',
        '7xs': '4rem'
      },
      lineHeight: {
        '4.5': '1.125rem',
        '11': '2.75rem',
        '13': '3.25rem',
        '16': '4.5rem'
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
