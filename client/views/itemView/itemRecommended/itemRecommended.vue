<template>
    <div class="mt-2 mx-6 lg:mx-auto">
        <div class="text-lg font-medium pb-1 mb-4">Gợi ý dành cho bạn</div>

        <div>
            <swiper :modules="[SwiperNavigation]" :slides-per-view="4" :space-between="12" navigation>
                <swiper-slide></swiper-slide>
            </swiper>
        </div>

        <div class="my-8 h-[1px] bg-gray-200"></div>
    </div>
</template>

<script setup lang="ts"></script>

<style scoped></style>
