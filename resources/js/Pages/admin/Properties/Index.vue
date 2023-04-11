<script setup>
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import { Head } from "@inertiajs/vue3";
import { Link } from "@inertiajs/vue3";
import { useForm } from "@inertiajs/vue3";

const form = useForm({
  properties: "",
});

const props = defineProps({
  properties: Array,
});

function destroy(id) {
  if (confirm("Are you sure you want to Delete")) {
    form.delete(route("properties.destroy", id));
  }
}
</script>

<template>
  <Head title="Manage Properties" />

  <AuthenticatedLayout>
    <template #header>
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        Manage Properties
      </h2>
    </template>

    <div class="py-12 overflow-x-auto">
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
          <div class="p-6 bg-white border-b border-gray-200">
            <div className="flex items-center justify-between mb-6">
              <Link
                className="px-6 py-2 text-white bg-blue-500 focus:outline-none"
                :href="route('properties.create')"
              >
                Add Property
              </Link>
            </div>

            <div class="block w-full overflow-x-auto">
              <table className="table-auto w-full">
                <thead>
                  <tr className="bg-gray-100">
                    <th className="px-4 py-2 w-20">No.</th>

                    <th className="px-4 py-2 w-64 ">Property Address</th>

                    <th className="px-4 py-2 w-24 ">Price</th>

                    <th className="px-4 py-2 w-24 ">Area</th>

                    <th className="px-4 py-2 w-24 ">Description</th>

                    <th className="px-4 py-2 w-24 ">Bedrooms/Bathrooms</th>

                    <th className="px-4 py-2 w-24 ">Owner Details</th>

                    <th className="px-4 py-2 w-24 ">Property Features</th>

                    <th className="px-4 py-2 w-48">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr
                    v-for="(property, index) in props.properties"
                    :key="index"
                  >
                    <td className="border px-4 py-2 text-center">
                      {{ index + 1 }}
                    </td>

                    <td className="border px-4 py-2 text-center">
                      {{ property.ApartmentNumber }} -
                      {{ property.StreetAddress }}, {{ property.City }},
                      {{ property.PostalCode }}
                    </td>

                    <td className="border px-4 py-2 text-center">
                      {{ property.Price }}
                    </td>

                    <td className="border px-4 py-2 text-center">
                      {{ property.SquareFeet }}
                    </td>

                    <td className="border px-4 py-2 text-center">
                      {{ property.Description }}
                    </td>

                    <td className="border px-4 py-2 text-center">
                      {{ property.Bedrooms }}/{{ property.Bathrooms }}
                    </td>

                    <td className="border px-4 py-2 text-center">
                      {{ property.OwnerName }} {{ property.OwnerEmail }}
                      {{ property.OwnerPhone }}
                    </td>

                    <td className="border px-4 py-2 text-center">
                      {{ property.Features }}
                    </td>

                    <td className="border px-4 py-3 text-center">
                      <Link
                        :href="route('properties.edit', property.id)"
                        className="mx-1 my-3 px-4 py-2 text-sm text-white bg-green-500 border-green-500 border hover:bg-green-600 rounded-sm"
                      >
                        Edit
                      </Link>
                      <button
                        @click="destroy(property.id)"
                        type="button"
                        className="mx-1 my-3 px-2 mb-0 sm:mb-3 py-2 text-sm text-white bg-red-500 border-red-500 border hover:bg-red-600 rounded-sm"
                      >
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
  </AuthenticatedLayout>
</template>
