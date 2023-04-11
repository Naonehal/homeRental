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
                    <div class="mt-4 text-xl text-hover">Get in touch!</div>
                    <div class="mt-2 text-xl sm:text-4xl text-white font-bold mb-4">
                        Contact Us
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div> <!-- Comment -->

        <div class="container mx-auto py-8 sm:py-12 px-4 sm:px-10">
            <div class="grid justify-center">
                <div><span class="text-gray-500">Address:</span> 123 Main St, Abbotsford, CA </div>
                <div><span class="text-gray-500">Phone:</span> 555-555-5555 </div>
                <div><span class="text-gray-500">Email:</span> info@homefrontrentals.com </div>
            </div>

            <div class="mt-8 sm:mt-16 grid sm:grid-cols-2 ">
                <div class="ml-10">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10464.207244610787!2d-122.2852935!3d49.0286216!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54844abe35ff8cfd%3A0x6189b1763e4cf69!2sUniversity%20of%20the%20Fraser%20Valley!5e0!3m2!1sen!2sca!4v1681125051061!5m2!1sen!2sca"
                        width="500" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>

                </div>

                <div>
                    <form class="p-8 bg-white shadow-2xl rounded space-y-4">
                        <div>
                            <input type="text" placeholder="Enter Name"
                                class="px-4 py-2 w-full border focus:border-primary focus:outline-none rounded bg-gray-200"
                                required>
                            <!-- <span class="text-red-600 text-sm">{{ getError('name') }}</span> -->
                        </div>

                        <div>
                            <input type="email" placeholder="Enter Email"
                                class="px-4 py-2 w-full border focus:border-primary focus:outline-none rounded bg-gray-200"
                                required>
                            <!-- <span class="text-red-600 text-sm">{{ getError('name') }}</span> -->
                        </div>
                        <div>
                            <input type="phone" placeholder="Phone Number"
                                class="px-4 py-2 w-full border focus:border-primary focus:outline-none rounded bg-gray-200"
                                required>
                            <!-- <span class="text-red-600 text-sm">{{ getError('name') }}</span> -->
                        </div>
                        <div>
                            <textarea placeholder="Enter Message"
                                class="px-4 py-2 w-full border focus:border-primary focus:outline-none rounded bg-gray-200"
                                rows="5" required></textarea>
                            <!-- <span class="text-red-600 text-sm">{{ getError('name') }}</span> -->
                        </div>

                        <button class="px-4 py-2 sm:px-6 bg-primary text-white rounded focus:outline-none">
                            Submit </button>

                    </form>


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
import Footer from "./footer.vue"
</script>

