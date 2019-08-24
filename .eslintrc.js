module.exports = {
  env: {
    browser: true,
    es6: true,
  },
  extends: [
    'airbnb',
    'react-app'
  ],
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
    ecmaVersion: 2018,
    sourceType: 'module',
  },
  plugins: [
    'jsx-a11y'
  ],
  rules: {
      "react/jsx-filename-extension": 0,
      "react/prefer-stateless-function": 0,
      "react/prop-types": 0,
      "react/no-unused-state": 0,
  },
};
