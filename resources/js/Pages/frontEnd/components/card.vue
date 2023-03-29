<template>
    <div class="max-w-sm rounded overflow-hidden shadow-lg relative font-serif">
        <img class="w-full" :src="image" alt="Property Image">
        <div class="absolute top-[12.5rem] right-0 m-2 sm:absolute sm:top-0 sm:right-0">
            <div class="inline-block rounded-full py-1 px-3 bg-hover">
                <div class="text-white text-m">{{ propertyType }}</div>
            </div>
        </div>
        <div class="px-6 py-5">
            <p class="text-gray-700 text-base font-bold">{{ propertyAddress }}</p>
        </div>
        <div class="px-6 py-0 mb-4 flex">
            <button
                class="bg-primary hover:bg-hover text-white font-bold py-2 px-4 rounded-none hover:opacity-120 duration-700"
                @click="$emit('view-listing')">
                View Listing
            </button>
            <div class="text-gray-700 text-base font-bold px-10 py-2">
                $ {{ price }}
            </div>
        </div>
    </div>
</template>



<script >
export default {
    props: {
        image: {
            type: String,
            required: true
        },
        propertyType: {
            type: String,
            required: true
        },
        propertyAddress: {
            type: String,
            required: true
        },
        price: {
            type: String,
            required: true
        }
    }
}
</script>


