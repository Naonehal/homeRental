<template>
    <Head title="Add City" />

    <AuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Add a City
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm ">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <div className="flex items-center justify-between mb-6">
                            <Link className="px-6 py-2 text-white bg-blue-500  focus:outline-none"
                                :href="route('cities.index')">
                            Back
                            </Link>
                        </div>

                        <form name="createForm" @submit.prevent="submit">
                            <div className="flex flex-col">
                                <div className="mb-4">
                                    <BreezeLabel for="cities" value="City Name" />

                                    <BreezeInput id="City Name" type="text" class="mt-1 block w-full" v-model="form.cities"
                                        autofocus />

                                    <span className="text-red-600" v-if="form.errors.cities">
                                        {{ form.errors.cities }}
                                    </span>
                                </div>
                            </div>

                            <div className="mt-4">
                                <button type="submit" className="px-6 py-2 font-bold text-white bg-green-500 rounded">
                                    Save
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </AuthenticatedLayout>
</template>

<script setup>
import BreezeInput from '@/Components/TextInput.vue';
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head, Link, useForm } from '@inertiajs/vue3';
import BreezeLabel from '@/Components/InputLabel.vue';

const form = useForm({
    cities: "",
});

const submit = () => {
    form.post(route("cities.store"));
};
</script>



