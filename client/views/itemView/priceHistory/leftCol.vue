<template>
    <div class="flex-grow border-primary-400 border rounded p-4 min-h-max">
        <div class="w-full flex justify-between">
            <div class="flex flex-row justify-start">
                <span class="text-lg font-medium text-primary-400">Biến động giá</span>
                <img src="~/assets/images/logo-transparent.png" alt="icon beecost" class="w-6 h-6" />
            </div>

            <div>
                <div class="w-full flex justify-end items-center space-x-2 mb-2">
                    <span class="text-sm">Giá hiện tại:</span>
                    <span class="text-lg font-medium">472.290&nbsp;₫</span>
                </div>

                <div class="flex flex-row space-x-4 mb-2 text-sm">
                    <div class="min-price display-row2">
                        Từ
                        <span class="mx-2 px-3 py-1 bg-gray-200">06-06-2023</span>
                    </div>

                    <div class="max-price display-row2">
                        Đến
                        <span class="ml-2 px-3 py-1 bg-gray-200">27-02-2024</span>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="flex flex-row space-x-4 mb-2 ml-2 text-sm">
                <div>
                    Cao nhất:
                    <span class="text-red-400">669.000&nbsp;₫</span>
                </div>

                <div>
                    Thấp nhất:
                    <span class="text-green-600">381.650&nbsp;₫</span>
                </div>
            </div>

            <PriceChart />
        </div>
    </div>
</template>

<script setup lang="ts">
import PriceChart from '~/views/itemView/priceHistory/priceChart.vue';
</script>

<style scoped></style>
