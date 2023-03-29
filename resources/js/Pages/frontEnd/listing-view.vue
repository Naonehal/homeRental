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

    <div>
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2856.9839084961463!2d-122.32837368431713!3d49.04457499553303!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x548435513935b14d%3A0x8d658ea7c310a726!2s2347%20Bevan%20Crescent%2C%20Abbotsford%2C%20BC%20V2T%203Z4!5e1!3m2!1sen!2sca!4v1679986490245!5m2!1sen!2sca"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>

    <div>
        <Footer />
    </div>
</template>

<script setup>

import Navbar from "./navbar.vue"
import Footer from "./footer.vue"

</script>
