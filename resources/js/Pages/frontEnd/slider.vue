<template>
  <Swiper
    class="max-w-screen-lg mx-auto my-2"
    :modules="modules"
    :space-between="20"
    :loop="true"
    :pagination="false"
    :autoplay="{
      delay: 3000,
      disableOnInteraction: false,
      pauseOnMouseEnter: true,
    }"
  >
    <swiper-slide
      v-for="slide in swiper"
      :key="slide.id"
      class="sm:flex sm:justify-evenly"
    >
      <div>
        <h1 class="font-bold text-2xl lg:text-3xl text-link">{{ slide.id }}</h1>
        <p class="font-bold text-xl max-w-sm lg:max-w-lg text-hover">
          {{ slide.title }}
        </p>
      </div>
    </swiper-slide>
  </Swiper>
</template>

<script>
import { Swiper, SwiperSlide } from "swiper/vue";
import { Autoplay, Pagination } from "swiper";
import "swiper/css";
import "swiper/css/pagination";
import { ref, toRefs } from "vue";

export default {
  props: {
    type: {
      type: String,
      required: true,
    },
    address: {
      type: String,
      required: true,
    },
  },
  components: { Swiper, SwiperSlide },
  setup(props) {
    const { type, address } = toRefs(props);
    const swiper = ref([
      {
        id: "Property Address",
        title: address.value,
        image: "https://picsum.photos/1920/1080",
      },
      {
        id: "Property Type",
        title: type.value,
        image: "https://picsum.photos/1920/1080",
      },
    ]);
    return { modules: [Autoplay, Pagination], swiper };
  },
};
</script>
