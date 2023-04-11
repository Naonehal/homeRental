<template>
  <Head title="Add Property" />

  <AuthenticatedLayout>
    <template #header>
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        Add Property
      </h2>
    </template>

    <div class="py-12">
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm">
          <div class="p-6 bg-white border-b border-gray-200">
            <div className="flex items-center justify-between mb-6">
              <Link
                className="px-6 py-2 text-white bg-blue-500  focus:outline-none"
                :href="route('properties.index')"
              >
                Back
              </Link>
            </div>

            <form name="createForm" @submit.prevent="submit">
              <div className="flex flex-col">
                <div className="mb-4">
                  <BreezeLabel for="properties" value="Owner Name" />

                  <BreezeInput
                    id="Street"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.OwnerName"
                    autofocus
                  />

                  <span className="text-red-600" v-if="form.errors.OwnerName">
                    {{ form.errors.OwnerName }}
                  </span>
                </div>

                <div className="mb-4">
                  <BreezeLabel for="properties" value="Owner Email" />

                  <BreezeInput
                    id="Street"
                    type="email"
                    class="mt-1 block w-full"
                    v-model="form.OwnerEmail"
                    autofocus
                  />

                  <span className="text-red-600" v-if="form.errors.OwnerEmail">
                    {{ form.errors.OwnerEmail }}
                  </span>
                </div>

                <div className="mb-4">
                  <BreezeLabel for="properties" value="Owner Phone" />

                  <BreezeInput
                    id="Street"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.OwnerPhone"
                    autofocus
                  />

                  <span className="text-red-600" v-if="form.errors.OwnerPhone">
                    {{ form.errors.OwnerPhone }}
                  </span>
                </div>
                <div className="mb-4">
                  <BreezeLabel for="properties" value="Street" />

                  <BreezeInput
                    id="Street"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.StreetAddress"
                    autofocus
                  />

                  <span
                    className="text-red-600"
                    v-if="form.errors.StreetAddress"
                  >
                    {{ form.errors.StreetAddress }}
                  </span>
                </div>

                <div className="mb-4">
                  <BreezeLabel
                    for="properties"
                    value="Apartment Number (optional)"
                  />

                  <BreezeInput
                    id="Street"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.ApartmentNumber"
                    autofocus
                  />

                  <span
                    className="text-red-600"
                    v-if="form.errors.ApartmentNumber"
                  >
                    {{ form.errors.ApartmentNumber }}
                  </span>
                </div>
                <div className="mb-4">
                  <BreezeLabel for="properties" value="City" />

                  <select
                    id="City"
                    name="City"
                    class="mt-1 block w-full"
                    v-model="form.City"
                  >
                    <option
                      v-for="(city, index) in props.cities"
                      :key="index"
                      :value="city.name"
                    >
                      {{ city.name }}
                    </option>
                  </select>

                  <span className="text-red-600" v-if="form.errors.City">
                    {{ form.errors.City }}
                  </span>
                </div>
                <div className="mb-4">
                  <BreezeLabel for="properties" value="Postal Code" />

                  <BreezeInput
                    id="Street"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.PostalCode"
                    autofocus
                  />

                  <span className="text-red-600" v-if="form.errors.PostalCode">
                    {{ form.errors.PostalCode }}
                  </span>
                </div>
                <div className="mb-4">
                  <BreezeLabel for="properties" value="Type of Property" />

                  <select
                    id="Type"
                    name="Type"
                    class="mt-1 block w-full"
                    v-model="form.Type"
                  >
                    <option>Townhouse</option>
                    <option>Condo</option>
                    <option>Apartment</option>
                    <option>Farmhouse</option>
                    <option>Single Family Home</option>
                    <option>Basement</option>
                  </select>

                  <span className="text-red-600" v-if="form.errors.Type">
                    {{ form.errors.Type }}
                  </span>
                </div>
              </div>

              <div className="mb-4">
                <BreezeLabel for="properties" value="Price (CAD)" />

                <BreezeInput
                  id="Street"
                  type="number"
                  class="mt-1 block w-full"
                  v-model="form.Price"
                  autofocus
                />

                <span className="text-red-600" v-if="form.errors.Price">
                  {{ form.errors.Price }}
                </span>
              </div>

              <div className="mb-4">
                <BreezeLabel for="properties" value="Bedrooms" />

                <BreezeInput
                  id="Street"
                  type="number"
                  class="mt-1 block w-full"
                  v-model="form.Bedrooms"
                  autofocus
                />

                <span className="text-red-600" v-if="form.errors.Bedrooms">
                  {{ form.errors.Bedrooms }}
                </span>
              </div>

              <div className="mb-4">
                <BreezeLabel for="properties" value="Bathrooms" />

                <BreezeInput
                  id="Street"
                  type="number"
                  class="mt-1 block w-full"
                  v-model="form.Bathrooms"
                  autofocus
                />

                <span className="text-red-600" v-if="form.errors.Bathrooms">
                  {{ form.errors.Bathrooms }}
                </span>
              </div>

              <div className="mb-4">
                <BreezeLabel for="properties" value="Area (in sq. feet)" />

                <BreezeInput
                  id="Street"
                  type="number"
                  class="mt-1 block w-full"
                  v-model="form.SquareFeet"
                  autofocus
                />

                <span className="text-red-600" v-if="form.errors.SquareFeet">
                  {{ form.errors.SquareFeet }}
                </span>
              </div>

              <div className="mb-4">
                <BreezeLabel for="properties" value="Description" />

                <textarea
                  id="Description"
                  class="mt-1 block w-full"
                  v-model="form.Description"
                  autofocus
                >
                </textarea>

                <span className="text-red-600" v-if="form.errors.Description">
                  {{ form.errors.Description }}
                </span>
              </div>

              <div className="mt-4">
                <button
                  type="submit"
                  className="px-6 py-2 font-bold text-white bg-green-500 rounded"
                >
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
import BreezeInput from "@/Components/TextInput.vue";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import { Head, Link, useForm } from "@inertiajs/vue3";
import BreezeLabel from "@/Components/InputLabel.vue";

const form = useForm({
  StreetAddress: props.property.StreetAddress,
  ApartmentNumber: props.property.ApartmentNumber,
  City: props.property.City,
  PostalCode: props.property.PostalCode,
  Type: props.property.Type,
  Price: props.property.Price,
  Bedrooms: props.property.Bedrooms,
  Bathrooms: props.property.Bathrooms,
  SquareFeet: props.property.SquareFeet,
  Description: props.property.Description,
  Image: props.property.Image,
  Features: props.property.Features,
  OwnerName: props.property.OwnerName,
  OwnerEmail: props.property.OwnerEmail,
  OwnerPhone: props.property.OwnerPhone,
});

const props = defineProps({
  cities: Array,
  property: Object,
});

const submit = () => {
  form.put(route("properties.update", props.property.id));
};
</script>



