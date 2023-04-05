<template>
    <div>
        <Navbar />
    </div>
    <div class="relative z-0 h-50 sm:h-[36rem] font-serif">
        <img src="/images/listing.jpg" alt="listing" class="h-full w-full object-cover">
        <div class="absolute inset-0 bg-black opacity-70"></div>

        <div class="absolute inset-0">
            <div class="conatiner mx-auto px-4 sm:px-60 h-full w-full flex flex-col justify-center sm:justify-end">
                <div class="bg-primary w-2/3 border border-none rounded-none py-4 px-8 sm:mb-16">
                    <div class="mt-4 text-xl text-hover">OUR AVAILABLE RENTALS</div>
                    <div class="mt-2 text-xl sm:text-4xl text-white font-bold mb-4">
                        Explore Our Wide Selection
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container mx-auto flex justify-center mt-14">
        <input type="text" placeholder="Search by city" v-model="searchQuery"
            class="w-96 px-4 py-2 border border-gray-900 rounded-md shadow-sm focus:outline-none focus:ring-primary focus:border-primary">
        <button @click="searchProperties"
            class="inline-flex items-center px-4 ml-2 py-2 border border-transparent text-base font-medium rounded-md text-white bg-primary hover:bg-primary-dark focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary">
            Search
        </button>
    </div>
    <div class="grid gap-6 lg:grid-cols-3 lg:mx-8 xl:mx-16 py-12 px-4 sm:px-20">
        <div class="max-w-xl mx-auto">
            <PropertyCard image="/images/listing.jpg" property-type="Single Family Home"
                property-address="119 Main St, Abbotsford, CA" price="1,500" @view-listing="openListing" />
        </div>
        <div class="max-w-xl mx-auto">
            <PropertyCard image="/images/listing.jpg" property-type="Single Family Home"
                property-address="120 Main St, Abbotsford, CA" price="1,500" @view-listing="openListing" />
        </div>
        <div class="max-w-xl mx-auto">
            <PropertyCard image="/images/listing.jpg" property-type="Single Family Home"
                property-address="121 Main St, Abbotsford, CA" price="1,500" @view-listing="openListing" />
        </div>
        <div class="max-w-xl mx-auto">
            <PropertyCard image="/images/listing.jpg" property-type="Single Family Home"
                property-address="122 Main St, Abbotsford, CA" price="1,200" @view-listing="openListing" />
        </div>
        <div class="max-w-xl mx-auto">
            <PropertyCard image="/images/listing.jpg" property-type="Single Family Home"
                property-address="123 Main St, Abbotsford, CA" price="1,500" @view-listing="openListing" />
        </div>

    </div>


    <div>
        <Footer />
    </div>
</template>

<script setup>
import Navbar from "./navbar.vue"
import Footer from "./footer.vue"
import PropertyCard from "./components/card.vue"

</script>

