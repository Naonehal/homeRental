<template>
    <div class="max-w-sm rounded overflow-hidden shadow-lg relative font-serif bg-white">
        <img class="w-full h-64 object-cover" :src="computedImage()" alt="Property Image" />
        <div class="absolute top-[12.5rem] right-0 m-2 sm:absolute sm:top-0 sm:right-0">
            <div class="inline-block rounded-full py-1 px-3 bg-hover">
                <div class="text-white text-m">{{ propertyType }}</div>
            </div>
        </div>
        <div class="px-6 py-5">
            <p class="text-gray-700 font-extrabold font-mono text-xl">
                {{ propertyAddress }}
            </p>
        </div>
        <div class="px-6 py-0 mb-4 flex">
            <Link :href="route('listing-view', id)">
            <button
                class="bg-primary hover:bg-hover text-white font-bold py-2 px-4 rounded-none hover:opacity-120 duration-700">
                View Listing
            </button>
            </Link>
            <div class="text-gray-700 font-bold px-10 py-1 tabular-nums text-2xl">
                $ {{ price }}
            </div>
        </div>
    </div>
</template>

<script setup>
import { Link } from "@inertiajs/vue3";
</script>

<script >
export default {
    props: {
        Image: {
            type: String,
            required: true,
        },
        propertyType: {
            type: String,
            required: true,
        },
        propertyAddress: {
            type: String,
            required: true,
        },
        price: {
            type: String,
            required: true,
        },
        id: {
            type: Number,
            required: true,
        },
    },
    methods: {
        computedImage() {
            return "/storage/images/" + this.Image;
        },
    },
};
</script>


