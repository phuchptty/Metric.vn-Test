<template>
    <ItemView />
</template>

<script setup lang="ts">
import ItemView from '~/views/itemView/itemView.vue';

defineComponent({
    name: 'HomePage',
});

definePageMeta({
    layout: 'default',
});
</script>
