<template>
    <div class="w-full overflow-hidden mt-2">
        <div class="w-max lg:w-full flex flex-row flex-nowrap space-x-2 lg:space-x-4 mr-4 lg:mr-0">
            <div class="w-64 my-2 lg:my-0 lg:shadow-none lg:w-1/3" style="max-width: 450px" v-for="i in 3" :key="i">
                <div class="flex flex-col overflow-hidden">
                    <div class="flex-shrink-0">
                        <a href="/blog/pin-laptop-gia-re" class="block mt-2">
                            <img
                                alt="Có nên mua và sử dụng pin laptop giá rẻ không ? [CHUYÊN GIA TƯ VẤN]"
                                class="w-full object-cover aspect-w7-h4"
                                src="https://static.beecost.vn/upload/uploads/2020/03/1584424796.6228461..jpe"
                            />
                        </a>
                    </div>

                    <div class="flex-1 bg-white flex flex-col justify-between">
                        <div class="flex-1">
                            <a href="/blog/pin-laptop-gia-re" class="block my-2">
                                <p class="text-lg font-medium text-gray-900 line-clamp-2 h-14">
                                    Có nên mua và sử dụng pin laptop giá rẻ không ? [CHUYÊN GIA TƯ VẤN]
                                </p>

                                <p class="mt-3 font-normal text-sm text-gray-500 line-clamp-3 h-16">
                                    Giá một chiếc pin laptop mới sẽ là không hề rẻ chút nào đối với những học sinh, sinh viên. Cho nên, không ít sinh
                                    viên nghĩ tới phương án sử dụng các loại pin laptop giá rẻ để tiết kiệm chi phí. Tuy nhiên, việc sử dụng loại pin
                                    giá rẻ này có thực sự tốt, nên hay không nên?
                                </p>

                                <div class="bg-gray-200 h-10 flex justify-center items-center mt-5">
                                    <p class="uppercase">Đọc thêm</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="my-8 h-[1px] bg-gray-200"></div>
    </div>
</template>

<script setup lang="ts">
defineComponent({
    name: 'BlogInItemView',
});
</script>

<style scoped></style>
