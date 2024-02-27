<template>
    <h1 class="relative flex font-semibold text-base lg:text-lg text-gray-800 select-text mt-4 lg:mt-0">
        Bộ Hub mở rộng Baseus Metal Gleam 2 Series 4K60Hz
    </h1>

    <ReciveDiscountBtn class="my-2 lg:my-4" />

    <p class="flex flex-wrap items-center text-gray-600 mb-4">
        <span>Giá từ Shopee</span>
        <img alt="Shopee" class="rounded-full ml-3 h-8" src="~/assets/images/shopee.jpg" />
    </p>

    <div class="flex lg:flex-col justify-between flex-col">
        <div class="h-full flex-grow flex justify-between lg:justify-start lg:flex-row lg:space-x-10 lg:items-center mb-3 flex-row">
            <div>
                <p class="text-2xl font-bold text-red-600">472.290&nbsp;₫</p>
                <p class="text-sm line-through text-gray-600">519.000&nbsp;₫</p>
            </div>

            <div class="flex-shrink-0 h-7 mt-2 lg:mt-0">
                <PriceStatusTag />
            </div>

            <GoToShopBtn />
        </div>

        <div class="flex flex-col-reverse lg:flex-col items-end lg:items-start">
            <div class="flex flex-col lg:flex-row items-end lg:items-center text-xs lg:text-sm">
                <div class="rating-star flex items-center space-x-1 md:w-auto mb-2 lg:mb-0 lg:mr-2">
                    <p class="text-yellow-400">4.9</p>

                    <div class="flex flex-wrap items-center h-4 text-yellow-400">
                        <font-awesome-icon :icon="faStar" class="h-3 lg:h-4" />
                        <font-awesome-icon :icon="faStar" class="h-3 lg:h-4" />
                        <font-awesome-icon :icon="faStar" class="h-3 lg:h-4" />
                        <font-awesome-icon :icon="faStar" class="h-3 lg:h-4" />
                        <font-awesome-icon :icon="faStarHalfStroke" class="h-3 lg:h-4" />
                    </div>
                </div>

                <div class="flex flex-wrap space-x-2 justify-end lg:justify-start">
                    <div class="divideDesktopOnly">
                        <p>60 <span class="text-gray-500">đánh giá</span></p>
                    </div>

                    <div class="divideRegular pl-2 border-opacity-50">
                        <p>201 <span class="text-gray-500">lượt bán</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import { faStar, faStarHalfStroke } from '@fortawesome/free-solid-svg-icons';
import GoToShopBtn from '~/views/itemView/goToShopBtn.vue';
import PriceStatusTag from '~/components/priceStatusTag.vue';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
</script>

<style scoped>
@media (min-width: 768px) {
    .divideDesktopOnly {
        border-color: #d1d5db;
        border-left-width: 2px;
        padding-left: 0.75rem;
    }
}

.divideRegular {
    border-color: #d1d5db;
    border-left-width: 2px;
}
</style>
