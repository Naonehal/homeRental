<template>
    <div class="max-w-sm rounded overflow-hidden shadow-lg relative font-serif bg-white h-96">
        <img class="w-full h-64" :src="image" alt="Property Image">
        <div class="absolute top-[12.5rem] right-0 m-2 sm:absolute sm:top-0 sm:right-0">
            <div class="inline-block rounded-full py-1 px-3 bg-hover">
                <div class="text-white text-m">{{ propertyType }}</div>
            </div>
        </div>
        <div class="px-6 py-5">
            <p class="text-gray-700 text-base font-bold">{{ propertyAddress }}</p>
        </div>
        <div class="px-6 py-0 mb-4 flex">
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
