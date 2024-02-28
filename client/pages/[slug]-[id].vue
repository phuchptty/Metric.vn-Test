<template>
    <ItemView :item-detail-data="itemDetailData" />
</template>

<script setup lang="ts">
import ItemView from '~/views/itemView/itemView.vue';

defineComponent({
    name: 'ItemPage',
});

definePageMeta({
    layout: 'default',
});

const route = useRoute();

const id = route.params.id;

const { data, error } = await useCustomFetch(`/item/${id}/detail`);

if (error.value) {
    showError({
        statusCode: error.value?.data?.statusCode || 404,
        message: error.value?.data?.message,
    });
}

if (!data.value || !data.value.data) {
    showError({
        statusCode: 404,
        message: 'Không tìm thấy sản phẩm.',
    });
}

const itemDetailData = data.value.data;
</script>

<style scoped></style>
