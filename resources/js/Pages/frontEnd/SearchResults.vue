<template>
    <div>
        <Navbar />
    </div>
    <div class="relative z-0 h-50 sm:h-[36rem] font-serif">
        <img src="/images/listing.jpg" alt="listing" class="h-full w-full object-cover" />
        <div class="absolute inset-0 bg-black opacity-70"></div>

        <div class="absolute inset-0">
            <div class="conatiner mx-auto px-4 sm:px-60 h-full w-full flex flex-col justify-center sm:justify-end">
                <div class="bg-primary w-2/3 border border-none rounded-none py-4 px-8 sm:mb-16">
                    <div class="mt-4 text-xl text-hover">OUR AVAILABLE RENTALS</div>
                    <div class="mt-2 text-xl sm:text-4xl text-white font-bold mb-4">
                        Search Results for {{ props.properties[0].City }}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="grid gap-6 lg:grid-cols-3 lg:mx-8 xl:mx-16 py-12 px-4 sm:px-20">
        <div class="max-w-xl mx-auto " v-for="(property, index) in props.properties" :key="index">
            <PropertyCard :Image="property.Image" :id="property.id" :property-type="property.Type" :property-address="
                property.ApartmentNumber +
                '-' +
                property.StreetAddress +
                ', ' +
                property.City +
                ', ' +
                property.PostalCode
            " :price="property.Price" @view-listing="openListing" />
        </div>
    </div>

    <div>
        <Footer />
    </div>
</template>

<script setup>
import Navbar from "./navbar.vue";
import Footer from "./footer.vue";
import PropertyCard from "./components/card.vue";

const props = defineProps({
    properties: Array,
});
</script>

