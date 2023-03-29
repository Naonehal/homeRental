<template>
    <Link :href="href" class="block sm:inline-block sm:px-8 py-2  hover:text-hover transition-colors duration-700"
        :class="classes">{{ label
        }}</Link>
</template>

<script setup>

import { Link } from "@inertiajs/vue3";

import { computed } from "vue";


const props = defineProps({
    href: String,
    label: String,
    active: Boolean,
    // active: Boolean,
});

const classes = computed(() => {
    return props.active ? "text-hover" : "text-black sm:text-link";
});
</script>

