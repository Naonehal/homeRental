<template>
    <div class="relative z-0 hero-height sm:h-screen">
        <img src="/images/banner.jpg" alt="hero" class="block h-screen w-full object-cover">

        <div class="absolute inset-0 bg-black opacity-40 h-screen"></div>

        <div class="sm:ml-60 px-4 sm:px-0 absolute inset-0 text-white">
            <div class="container mx-auto h-full flex flex-col justify-center font-serif">
                <div class="mt-40 text-6xl text-hover font-bold">Discover Quality Living</div>
                <div class="mt-4 text-4xl sm:w-1/2">with Our Rental Homes.</div>
                <div class="mt-6">
                    <button
                        class="bg-white text-black border border-none py-2 px-4 font-bold rounded-none hover:bg-hover hover:text-white transition duration-500 ease-in-out">
                        View Listing
                    </button>
                </div>
            </div>


        </div>
    </div>
</template>

<script>

</script>

<style>
.hero-height {
    height: calc(100vh - 5rem)
}
</style>



