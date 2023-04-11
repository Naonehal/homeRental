<template>
    <div>
        <Navbar />
    </div>
    <div class="font-serif">
        <Hero />
        <div class="my-24"></div> <!-- Increased margin-y to 24 (6rem) for more spacing -->

        <div class="bg-gray-100">
            <div class="w-full mx-auto p-8 bg-white rounded-md shadow-lg">
                <div class="flex justify-center items-center flex-col md:flex-row">
                    <!-- Updated flex direction for better mobile viewing -->
                    <div class="flex-1">
                        <h1 class="text-4xl font-bold text-primary mb-8">Search by Location</h1>
                        <div class="max-w-xl mx-auto">
                            <div class="flex items-center">
                                <input type="text" placeholder="Search by city" v-model="form.city"
                                    class="flex-1 px-6 py-4 text-lg border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary" />
                                <Link :href="route('search', form.city)">
                                <button @click="searchProperties"
                                    class="px-8 ml-4 py-4 text-lg font-medium rounded-md text-white bg-primary hover:bg-primary-dark focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary transform hover:scale-105 transition duration-300 ease-in-out">
                                    Search
                                </button>
                                </Link>
                            </div>
                        </div>
                    </div>
                    <div class="flex-1">
                        <img src="/images/listing.jpg" alt="Random Photo"
                            class="w-full h-auto mt-8 md:mt-0 ml-0 md:ml-8 rounded-md shadow-lg">
                        <!-- Adjusted margins for better alignment on different screen sizes -->
                    </div>
                </div>
            </div>
        </div>


        <div class="w-full mx-auto mt-0 bg-primary p-8 rounded-md shadow-lg">
            <h2 class="text-3xl font-bold text-white mb-8">Featured Properties</h2>
            <!-- Increased font size for a more prominent heading -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                <!-- Updated to a responsive grid layout with reduced gap for a more compact and modern look -->
                <div class="flex justify-center items-center">
                    <PropertyCard image="/storage/images/apartment-14954579.jpg" property-type="Apartment"
                        property-address="2485 Hill-Tout Street Abbotsford, BC" price="1200" @view-listing="openListing" />
                </div>
                <div class="flex justify-center items-center">
                    <PropertyCard image="/storage/images/dead.png" property-type="Condo"
                        property-address="2838 Livingstone Avenue Abbotsford, BC" price="2600"
                        @view-listing="openListing" />
                </div>
                <div class="flex justify-center items-center">
                    <PropertyCard image="/images/listing.jpg" property-type="Townhouse"
                        property-address="789 Oak St, Abbotsford, CA" price="1,900" @view-listing="openListing" />
                </div>
            </div>
        </div>



        <div class="bg-gray-100">
            <div class="w-full mx-auto p-6 bg-white rounded-md shadow-md mt-8">
                <h2 class="text-2xl font-bold mb-6">Customer Reviews</h2>
                <div class="flex flex-wrap gap-4">
                    <div class="flex-1">
                        <div class="flex items-center">
                            <img src="/images/customer1.jpg" alt="Customer 1" class="w-12 h-12 rounded-full mr-4">
                            <div>
                                <h3 class="text-xl font-bold">John Doe</h3>
                                <p class="text-gray-600">Real Estate Enthusiast</p>
                            </div>
                        </div>
                        <p class="text-gray-700 mt-2">"I recently had the pleasure of working with Homefront rentals when
                            looking for my home. From day 1, they were extremely responsive and had great suggestions for
                            homes to view based on what I was looking for. All throughout the negotiations and closing they
                            were there quickly handling any issues that may have arisen. If the time ever comes when I will
                            be looking for a new home, there isn't any question on who my Realtors will be!"</p>
                    </div>
                    <div class="flex-1">
                        <div class="flex items-center">
                            <img src="/images/customer2.jpg" alt="Customer 2" class="w-12 h-12 rounded-full mr-4">
                            <div>
                                <h3 class="text-xl font-bold">Jane Smith</h3>
                                <p class="text-gray-600">Homeowner</p>
                            </div>
                        </div>
                        <p class="text-gray-700 mt-2">"We had a wonderful stay at our rented apartment. Homefront rentals
                            met us at the apartment and showed us through. The information book was great with walking maps
                            of local attractions including the lovely beaches! Emergency contacts, supermarket, and public
                            parking information were also found in the book, as well as the apartment's details. They
                            reaffirmed to ring if we needed anything during our stay, we didn't! We will be back again to
                            this lovely agency if we need to rent."</p>
                    </div>
                    <div class="flex-1">
                        <div class="flex items-center">
                            <img src="/images/customer3.jpg" alt="Customer 3" class="w-12 h-12 rounded-full mr-4">
                            <div>
                                <h3 class="text-xl font-bold">Sarah Johnson</h3>
                                <p class="text-gray-600">Investor</p>
                            </div>
                        </div>
                        <p class="text-gray-700 mt-2">"I had the pleasure of working with one of Homefront's team member.
                            From start to finish, they were very responsive, kind, and a constant professional. I look
                            forward to the opportunity to work with Homefront Real Estate Team again."</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="bg-gray-100">
            <div class="max-w-3xl mx-auto py-12">
                <h2 class="text-3xl font-bold mb-6 text-center">Join Our Weekly Newsletter</h2>
                <div class="max-w-md mx-auto">
                    <div class="flex">
                        <input type="email" placeholder="Enter your email" v-model="newsletterEmail"
                            class="flex-1 px-4 py-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-primary focus:border-primary" />
                        <button @click="subscribeNewsletter"
                            class="px-6 ml-2 py-3 border border-transparent text-lg font-medium rounded-md text-white bg-primary hover:bg-primary-dark focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary">
                            Subscribe
                        </button>
                    </div>
                    <p class="mt-2 text-sm text-gray-600 text-center">Get the latest news delivered to your inbox every week
                    </p>
                </div>
            </div>
        </div>


    </div>
    <div>
        <Footer />
    </div>
</template>


<script setup>
import Navbar from "./navbar.vue"
import Hero from "./hero.vue"
import Footer from "./footer.vue"
import PropertyCard from "./components/card2.vue"
import { Link, useForm } from "@inertiajs/vue3";

const form = useForm({
    city: "",
});

  // Add your script logic here

</script>
