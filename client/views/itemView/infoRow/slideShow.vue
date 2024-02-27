<template>
    <client-only>
        <a-image-preview-group>
            <a-carousel arrows dots-class="slick-dots slick-thumb">
                <template #customPaging="props">
                    <a>
                        <img :src="images[props.i]" alt="" />
                    </a>
                </template>

                <div v-for="item in images" :key="item" class="slideImg">
                    <a-image :src="item" alt="" />
                </div>
            </a-carousel>
        </a-image-preview-group>
    </client-only>
</template>

<script setup lang="ts">
const images = [
    'https://cf.shopee.vn/file/be82e16ddc37dcf2657d02a30171a050_tn',
    'https://cf.shopee.vn/file/2d7d1d30596c7d6527b403f9e3a40518_tn',
    'https://cf.shopee.vn/file/38625d8696c075b0266676b87dc910dd_tn',
    'https://cf.shopee.vn/file/2c467c40341e8132bae9b6b493a7ae33_tn',
    'https://cf.shopee.vn/file/fb70d055c8d4b2604314d0ba36a9ba80_tn',
    'https://cf.shopee.vn/file/vn-11134207-7r98o-lnqi3a9zrw5632_tn',
    'https://cf.shopee.vn/file/vn-11134207-7r98o-lnqi3aa07ce294_tn',
    'https://cf.shopee.vn/file/0831df249013d5ae50d7ed42996412c8_tn',
    'https://cf.shopee.vn/file/be82e16ddc37dcf2657d02a30171a050_tn',
    'https://cf.shopee.vn/file/2d7d1d30596c7d6527b403f9e3a40518_tn',
    'https://cf.shopee.vn/file/38625d8696c075b0266676b87dc910dd_tn',
    'https://cf.shopee.vn/file/2c467c40341e8132bae9b6b493a7ae33_tn',
    'https://cf.shopee.vn/file/fb70d055c8d4b2604314d0ba36a9ba80_tn',
    'https://cf.shopee.vn/file/vn-11134207-7r98o-lnqi3a9zrw5632_tn',
    'https://cf.shopee.vn/file/vn-11134207-7r98o-lnqi3aa07ce294_tn',
    'https://cf.shopee.vn/file/0831df249013d5ae50d7ed42996412c8_tn',
    'https://cf.shopee.vn/file/be82e16ddc37dcf2657d02a30171a050_tn',
    'https://cf.shopee.vn/file/2d7d1d30596c7d6527b403f9e3a40518_tn',
    'https://cf.shopee.vn/file/38625d8696c075b0266676b87dc910dd_tn',
    'https://cf.shopee.vn/file/2c467c40341e8132bae9b6b493a7ae33_tn',
    'https://cf.shopee.vn/file/fb70d055c8d4b2604314d0ba36a9ba80_tn',
    'https://cf.shopee.vn/file/fb70d055c8d4b2604314d0ba36a9ba80',
];
</script>

<style scoped>
:global(.ant-image) {
    width: 100%;
    height: 100%;
    object-fit: contain;
}

:deep(.slick-dots) {
    position: relative;
    height: auto;
}

:deep(.slick-slide img) {
    display: block;
    margin: auto;
    max-width: 100%;
}

:deep(.slick-thumb) {
    bottom: 0;
}

:deep(.slick-thumb li) {
    width: 60px;
    height: 45px;
}

:deep(.slick-thumb li img) {
    width: 100%;
    height: 100%;
    display: block;
}
</style>
