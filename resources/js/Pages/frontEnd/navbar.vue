<template>
    <div>
        <nav id="navbar" class="px-4 py-4 sm:py-1 shadow sm:shadow-none sm:fixed w-full z-10 font-serif"
            :class="{ 'sm:bg-primary': !showBgColor, 'sm:bg-transparent': showBgColor }">
            <div class="container mx-auto flex flex-col sm:flex-row items-center justify-between">
                <div class="w-full flex flex-row items-center justify-between">
                    <div class="sm:ml-40">
                        <img src="/images/logo.jpg" alt="Logo"
                            class="h-24 w-32 object-contain hover:opacity-70 duration-700">
                    </div>
                    <div>
                        <button v-show="!isVisible" class="sm:hidden" @click="toggle">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" view-box="0 0 24 24"
                                xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M4 6h16M4 12h16M4 18h16"></path>
                            </svg>
                        </button>
                        <button v-show="isVisible" class="sm:hidden" @click="toggle">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" view-box="0 0 24 24"
                                xmlns="http://www.w3.org/2000/svg">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="mt-4 sm:mt-0 sm:mr-40 w-full sm:space-x-4 sm:text-right sm:block sm:text-link"
                    :class="{ 'hidden': !isVisible }">
                    <navbarLink class="block sm:inline-block" :href="route('index')" :active="route().current('index')"
                        label="Home"></navbarLink>
                    <navbarLink class="block sm:inline-block" :href="route('listing')" :active="route().current('listing')"
                        label="Listing"></navbarLink>
                    <navbarLink class="block sm:inline-block" :href="route('about')" :active="route().current('about')"
                        label="About"></navbarLink>
                    <navbarLink class="block sm:inline-block" :href="route('contact')" :active="route().current('contact')"
                        label="Contact"></navbarLink>
                </div>
            </div>
        </nav>
    </div>
</template>

<script setup>

import navbarLink from "./navbarLink.vue";

import { ref } from "vue";


var isVisible = ref(false);
var showBgColor = ref(true);


const toggle = () => {
    isVisible.value = !isVisible.value;
};

document.addEventListener('scroll', () => {
    const bodyPosition = document.body.getBoundingClientRect().top;
    if (bodyPosition > -100) {
        showBgColor.value = true;
        console.log(showBgColor.value)
    } else {
        showBgColor.value = false;
    }
});

</script>




