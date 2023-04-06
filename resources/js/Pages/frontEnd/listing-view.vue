<template>
    <div>
        <Navbar />
    </div>

    <div class="relative z-0 h-50 sm:h-[36rem] font-serif">
        <img src="/images/listing.jpg" alt="listing" class="h-full w-full object-cover">
        <div class="absolute inset-0 bg-black opacity-70"></div>

        <div class="absolute inset-0">
            <div class="conatiner mx-auto px-4 sm:px-60 h-full w-full flex flex-col justify-center sm:justify-end">
                <div class="bg-primary w-1/2 border border-none rounded-none py-4 px-8 sm:mb-16">
                    <Slider />
                </div>
            </div>
        </div>
    </div>
    <div class="container mx-auto flex justify-center mt-14 font-serif">
        <div class="text-3xl text-primary font-bold ">
            <h1>Property Details</h1>
        </div>
        <!-- <div class="">
            <p class="text-xl text-gray-700">
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit possimus natus obcaecati totam consequatur
                corrupti, accusantium perferendis eos, maiores esse libero delectus mollitia quaerat quas? Dicta nostrum
                eaque ad amet.
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit possimus natus obcaecati totam consequatur
                corrupti, accusantium perferendis eos, maiores esse libero delectus mollitia quaerat quas? Dicta nostrum
                eaque ad amet.
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit possimus natus obcaecati totam consequatur
                corrupti, accusantium perferendis eos, maiores esse libero delectus mollitia quaerat quas? Dicta nostrum
                eaque ad amet.
            </p>
        </div> -->
    </div>
    <div
        class="container mx-auto flex flex-col sm:flex-row justify-center sm:justify-between items-center mt-8 px-4 sm:px-48 w-full mb-6">
        <p class="text-xl text-gray-700 text-center sm:text-left mb-4 sm:mb-0">32838 Landeau Place is a condo for rent in
            Abbotsford, BC. It has 1 unit. Units have 2 bedrooms. Units have 2 bathrooms. Water is a utility included in the
            rent price. Penthouse condo. 6th - top floor. East building, beautiful "mountain views", lots of light, 2
            covered balconies, Bonus: "2" Underground parking stalls, +storage locker, +bike locker. "Excellent" location
            close to all amenities. Gladwin and Landeau Pl. Across from Superstore, Abbotsford. NO ANIMALS, NO SMOKING, NO
            VAPING please.</p>
    </div>
    <div class="bg-primary h-48 sm:h-[36rem] mt-6 mb-4 sm:mb-10 flex justify-center items-center">
        <div class="w-full px-4 sm:px-10 flex items-center justify-between">
            <div class="w-1/3">
                <h2 class="text-white text-xl sm:text-4xl font-bold font-serif py-6 text-center">Property Images</h2>
            </div>
            <div class="w-2/3 ">
                <swiper :slides-per-view="3" :space-between="20" :pagination="{ clickable: true }" :modules="modules"
                    class="mySwiper">
                    <swiper-slide v-for="slide in swiper" :key="slide.src">
                        <img class="mx-5 h-32 mb-10 sm:h-96 object-cover" :src="slide.src" alt="slide">
                    </swiper-slide>



                </swiper>
            </div>

        </div>

    </div>
    <!-- <div>
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2856.9839084961463!2d-122.32837368431713!3d49.04457499553303!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x548435513935b14d%3A0x8d658ea7c310a726!2s2347%20Bevan%20Crescent%2C%20Abbotsford%2C%20BC%20V2T%203Z4!5e1!3m2!1sen!2sca!4v1679986490245!5m2!1sen!2sca"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div> -->

    <div>
        <Footer />
    </div>
</template>

<script>

import Navbar from "./navbar.vue"
import Footer from "./footer.vue"
import Slider from "./slider.vue"

import { Swiper, SwiperSlide } from 'swiper/vue';
import 'swiper/swiper-bundle.css';
import { ref } from 'vue';
import { Pagination } from 'swiper';

export default {
    components: {
        Swiper,
        SwiperSlide,
        Navbar,
        Footer,
        Slider,
    },
    setup() {
        const swiper = ref([
            { src: '/images/listing.jpg' },
            { src: '/images/banner.jpg' },
            { src: '/images/listing.jpg' },
            { src: '/images/banner.jpg' },
            { src: '/images/listing.jpg' },
        ]);

        return {
            modules: [Pagination],
            swiper,
        };
    },
};
</script>
