module.exports = {
    env: {
        browser: true,
        es2021: true,
    },
    extends: [
        'eslint:recommended',
        'plugin:react/recommended',
        'plugin:@typescript-eslint/recommended',
        'prettier',
    ],
    parser: '@typescript-eslint/parser',
    parserOptions: {
        ecmaFeatures: {
            jsx: true,
        },
        ecmaVersion: 12,
        sourceType: 'module',
    },
    plugins: ['react', '@typescript-eslint'],
    rules: {
        '@typescript-eslint/explicit-module-boundary-types': 'off',
        'no-unused-vars': ['error', { argsIgnorePattern: '^_' }],
        'react/prop-types': ['off'],
    },
    settings: {
        react: {
            version: 'detect',
        },
    },
};
