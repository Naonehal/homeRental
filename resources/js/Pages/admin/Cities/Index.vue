<script setup>
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head } from '@inertiajs/vue3';
import { Link } from '@inertiajs/vue3';
import { useForm } from '@inertiajs/vue3';

const form = useForm({
    cities: "",
});

const props = defineProps({
    cities: Array,
});



function destroy(id) {
    if (confirm("Are you sure you want to Delete")) {
        form.delete(route('cities.destroy', id));
    }
}

</script>

<template>
    <Head title="Manage Cities" />

    <AuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">Manage Cities</h2>
        </template>

        <div class="py-12 overflow-x-auto">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 ">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <div className="flex items-center justify-between mb-6">
                            <Link className="px-6 py-2 text-white bg-blue-500 focus:outline-none"
                                :href="route('cities.create')">
                            Add City
                            </Link>
                        </div>

                        <div class="block w-full overflow-x-auto">
                            <table className="table-auto w-full">
                                <thead>
                                    <tr className="bg-gray-100">
                                        <th className="px-4 py-2 w-20">No.</th>

                                        <th className="px-4 py-2 w-64 ">City Name</th>

                                        <th className="px-4 py-2 w-24 ">No. of Properties</th>

                                        <th className="px-4 py-2 w-48">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="(city, index) in props.cities" :key="index">
                                        <td className="border px-4 py-2 text-center">
                                            {{ index + 1 }}
                                        </td>

                                        <td className="border px-4 py-2 text-center">
                                            {{ city.name }}
                                        </td>

                                    <td className="border px-4 py-2 text-center">
                                        2
                                    </td>

                                    <td className="border px-4 py-3 text-center">
                                        <Link :href="route('cities.edit', city.id)"
                                            className="mx-1 my-3 px-4 py-2 text-sm text-white bg-green-500 border-green-500 border hover:bg-green-600 rounded-sm">
                                        Edit
                                        </Link>
                                        <button @click="destroy(city.id)" type="button"
                                            className="mx-1 my-3 px-2 mb-0 sm:mb-3 py-2 text-sm text-white bg-red-500 border-red-500 border hover:bg-red-600 rounded-sm">
                                            Delete
                                        </button>
                                    </td>
                                </tr>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="py-12 overflow-x-auto">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        <div class="flex items-center justify-between mb-6">
                            <a class="px-6 py-2 text-white bg-blue-500 rounded-md focus:outline-none"
                                href="{{ route('cities.create') }}">
                                Add City
                            </a>
                        </div>

                        <div class="block w-full overflow-x-auto">
                            <table class="table-auto w-full">
                                <thead>
                                    <tr class="bg-gray-100">
                                        <th class="px-4 py-2 w-20">No.</th>
                                        <th class="px-4 py-2">City Name</th>
                                        <th class="px-4 py-2 w-24">No. of Properties</th>
                                        <th class="px-4 py-2 w-48">Actions</th>
                                    </tr>
                                </thead>
                                    <tbody>
                                        <tr v-for="(city, index) in props.cities" :key="index">
                                            <td class="border px-4 py-2 text-center">{{ index + 1 }}</td>
                                            <td class="border px-4 py-2">{{ city.name }}</td>
                                                                <td class="border px-4 py-2 text-center">2</td>
                                                                    <td class="border px-4 py-2 text-center">
                                                                                <a href="{{ route('cities.edit', city.id) }}"
                                                                                        class="mx-1 px-4 py-2 text-sm text-white bg-green-500 border-blue-500 border hover:bg-blue-600 rounded-sm">
                                                                                        Edit
                                                                                    </a>
                                                                                    <button @click="destroy(city.id)" type="button"
                                                                                        class="mx-1 px-4 py-2 text-sm text-white bg-red-500 border-red-500 border hover:bg-red-600 rounded-sm">
                                                                                        Delete
                                                                                                                                                                </button>
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                    </tbody>
                                                                                                                                                </table>
                                                                                                                                            </div>

                                                                                                                                        </div>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div> -->

    </AuthenticatedLayout>
</template>
