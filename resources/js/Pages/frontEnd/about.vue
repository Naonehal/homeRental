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
                    <div class="mt-4 text-xl text-hover"> </div>
                    <div class="mt-2 text-xl sm:text-4xl text-white font-bold mb-4">
                        About Us
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="bg-white rounded-lg shadow-lg overflow-hidden w-full mx-auto">
        <div class="px-6 py-8 sm:py-12 sm:flex sm:flex-row sm:items-center sm:justify-between ">
            <div class="sm:w-1/2">
                <h1 class="text-3xl font-bold text-gray-900 mb-4 sm:mb-6">Luxury Vacation Rentals in Canada</h1>
                <p class="text-gray-700 text-lg leading-relaxed mb-6">
                    At our company, we pride ourselves on being a premier provider of vacation rentals throughout Canada,
                    with a wide selection of properties in some of the country's most desirable destinations. Whether you're
                    looking for a cozy cabin in the woods or a luxurious beachfront villa, we have the perfect vacation
                    rental to suit your needs and preferences.
                </p>
                <p class="text-gray-700 text-lg leading-relaxed mb-6">
                    Our team is comprised of dedicated professionals who are passionate about travel and committed to
                    providing our customers with the highest level of service and support. We understand that a vacation is
                    a special and cherished time, and we strive to ensure that every aspect of our customers' experience is
                    exceptional, from booking to check-out.
                </p>
                <p class="text-gray-700 text-lg leading-relaxed mb-6">
                    We work closely with property owners to ensure that each rental is carefully selected and meticulously
                    maintained, and we regularly inspect our properties to ensure that they meet our high standards of
                    cleanliness, safety, and comfort. We also provide our customers with a range of amenities and services,
                    such as 24/7 customer support, concierge services, and local recommendations, to help them make the most
                    of their vacation experience.
                </p>
                <p class="text-gray-700 text-lg leading-relaxed mb-6">
                    At our company, we believe that a vacation should be more than just a break from everyday life – it
                    should be an opportunity to explore new places, try new things, and create lasting memories. That's why
                    we're committed to providing our customers with the best possible vacation rental experience, one that
                    they'll remember for years to come.
                </p>
            </div>
            <div class="sm:w-1/2 sm:px-6">
                <img class="w-full h-auto lg:h-full lg:w-auto"
                    src="https://via.placeholder.com/640x480.png?text=Property+Image" alt="Property Image">
            </div>
        </div>
    </div>


    <div>
        <Footer />
    </div>
</template>


<script setup>
import Navbar from "./navbar.vue"
import Footer from "./footer.vue"
</script>

