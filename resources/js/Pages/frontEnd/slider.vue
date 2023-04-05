<template>
    <Swiper class="border-b-2 cursor-grab border-grey-500 max-w-screen-lg m-auto p-4 mt-4" :modules="modules"
        :space-between="20" :loop="true" :pagination="false"
        :autoplay="{ delay: 3000, disableOnInteraction: false, pauseOnMouseEnter: true }">
        <swiper-slide v-for="slide in swiper" :key="slide.id" class="sm:flex sm:justify-evenly">
            <div>
                <h1 class="font-bold text-2xl lg:text-3xl text-link">{{ slide.id }}</h1>
                <p class="font-bold text-xl max-w-sm lg:max-w-lg text-hover">{{ slide.title }}</p>

            </div>
        </swiper-slide>
    </Swiper>
</template>

<script>
import { Swiper, SwiperSlide } from 'swiper/vue'
import { Autoplay, Pagination } from 'swiper'
import 'swiper/css'
import 'swiper/css/pagination'
import { ref } from 'vue'

export default {
    components: { Swiper, SwiperSlide },
    setup() {
        const swiper = ref([
            {
                id: 'Property Address',
                title: '119 Main St, Abbotsford, CA',
                image: 'https://picsum.photos/1920/1080'
            },
            {
                id: 'Property Type',
                title: 'Single Family Home',
                image: 'https://picsum.photos/1920/1080'
            },
        ])
        return { modules: [Autoplay, Pagination], swiper }
    }
};
</script>
