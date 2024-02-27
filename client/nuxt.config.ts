// https://nuxt.com/docs/api/configuration/nuxt-config
import svgLoader from 'vite-svg-loader';

export default defineNuxtConfig({
    devtools: { enabled: true },
    modules: [
        '@nuxtjs/tailwindcss',
        '@nuxtjs/eslint-module',
        '@pinia/nuxt',
        '@pinia-plugin-persistedstate/nuxt',
        '@ant-design-vue/nuxt',
        'nuxt-swiper',
    ],
    vite: {
        plugins: [svgLoader()],
    },
    css: ['@fortawesome/fontawesome-svg-core/styles.css'],
    antd: {
        icons: false,
    },
});
