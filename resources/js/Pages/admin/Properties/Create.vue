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
                            <Link className="px-6 py-2 text-white bg-blue-500  focus:outline-none"
                                :href="route('properties.index')">
                            Back
                            </Link>
                        </div>

                        <form name="createForm" @submit.prevent="submit">
                            <div className="flex flex-col">
                                <div className="mb-4">
                                    <BreezeLabel for="properties" value="Owner Name" />

                                    <BreezeInput id="Street" type="text" class="mt-1 block w-full" v-model="form.OwnerName"
                                        autofocus />

                                    <span className="text-red-600" v-if="form.errors.OwnerName">
                                        {{ form.errors.OwnerName }}
                                    </span>
                                </div>

                                <div className="mb-4">
                                    <BreezeLabel for="properties" value="Owner Email" />

                                    <BreezeInput id="Street" type="email" class="mt-1 block w-full"
                                        v-model="form.OwnerEmail" autofocus />

                                    <span className="text-red-600" v-if="form.errors.OwnerEmail">
                                        {{ form.errors.OwnerEmail }}
                                    </span>
                                </div>

                                <div className="mb-4">
                                    <BreezeLabel for="properties" value="Owner Phone" />

                                    <BreezeInput id="Street" type="text" class="mt-1 block w-full" v-model="form.OwnerPhone"
                                        autofocus />

                                    <span className="text-red-600" v-if="form.errors.OwnerPhone">
                                        {{ form.errors.OwnerPhone }}
                                    </span>
                                </div>
                                <div className="mb-4">
                                    <BreezeLabel for="properties" value="Street" />

                                    <BreezeInput id="Street" type="text" class="mt-1 block w-full"
                                        v-model="form.StreetAddress" autofocus />

                                    <span className="text-red-600" v-if="form.errors.StreetAddress">
                                        {{ form.errors.StreetAddress }}
                                    </span>
                                </div>

                                <div className="mb-4">
                                    <BreezeLabel for="properties" value="Apartment Number (optional)" />

                                    <BreezeInput id="Street" type="text" class="mt-1 block w-full"
                                        v-model="form.ApartmentNumber" autofocus />

                                    <span className="text-red-600" v-if="form.errors.ApartmentNumber">
                                        {{ form.errors.ApartmentNumber }}
                                    </span>
                                </div>
                                <div className="mb-4">
                                    <BreezeLabel for="properties" value="City" />

                                    <select id="City" name="City" class="mt-1 block w-full" v-model="form.City">
                                        <option v-for="(city, index) in props.cities" :key="index" :value="city.name">
                                            {{ city.name }}
                                        </option>
                                    </select>

                                    <span className="text-red-600" v-if="form.errors.City">
                                        {{ form.errors.City }}
                                    </span>
                                </div>
                                <div className="mb-4">
                                    <BreezeLabel for="properties" value="Postal Code" />

                                    <BreezeInput id="Street" type="text" class="mt-1 block w-full" v-model="form.PostalCode"
                                        autofocus />

                                    <span className="text-red-600" v-if="form.errors.PostalCode">
                                        {{ form.errors.PostalCode }}
                                    </span>
                                </div>
                                <div className="mb-4">
                                    <BreezeLabel for="properties" value="Type of Property" />

                                    <select id="Type" name="Type" class="mt-1 block w-full" v-model="form.Type">
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

                                <BreezeInput id="Street" type="number" class="mt-1 block w-full" v-model="form.Price"
                                    autofocus />

                                <span className="text-red-600" v-if="form.errors.Price">
                                    {{ form.errors.Price }}
                                </span>
                            </div>

                            <div className="mb-4">
                                <BreezeLabel for="properties" value="Bedrooms" />

                                <BreezeInput id="Street" type="number" class="mt-1 block w-full" v-model="form.Bedrooms"
                                    autofocus />

                                <span className="text-red-600" v-if="form.errors.Bedrooms">
                                    {{ form.errors.Bedrooms }}
                                </span>
                            </div>

                            <div className="mb-4">
                                <BreezeLabel for="properties" value="Bathrooms" />

                                <BreezeInput id="Street" type="number" class="mt-1 block w-full" v-model="form.Bathrooms"
                                    autofocus />

                                <span className="text-red-600" v-if="form.errors.Bathrooms">
                                    {{ form.errors.Bathrooms }}
                                </span>
                            </div>

                            <div className="mb-4">
                                <BreezeLabel for="properties" value="Area (in sq. feet)" />

                                <BreezeInput id="Street" type="number" class="mt-1 block w-full" v-model="form.SquareFeet"
                                    autofocus />

                                <span className="text-red-600" v-if="form.errors.SquareFeet">
                                    {{ form.errors.SquareFeet }}
                                </span>
                            </div>

                            <div className="mb-4">
                                <BreezeLabel for="properties" value="Description" />

                                <textarea id="Description" class="mt-1 block w-full" v-model="form.Description" autofocus>
                                                                                                                                                                                                                    </textarea>

                                <span className="text-red-600" v-if="form.errors.Description">
                                    {{ form.errors.Description }}
                                </span>
                            </div>
                            <div>
                                <BreezeLabel for="properties" value="Banner-Image" />
                                <input type="file" :ref="ImageV" v-on:change="handleFileUpload($event)" />

                                <span className="text-red-600" v-if="form.errors.Description">
                                    {{ form.errors.Description }}
                                </span>
                            </div>
                            <div>
                                <BreezeLabel for="properties" value="Slider1" />
                                <input type="file" :ref="ImageV" v-on:change="handleFileUpload2($event)" />

                                <span className="text-red-600" v-if="form.errors.Description">
                                    {{ form.errors.Description }}
                                </span>
                            </div>
                            <div>
                                <BreezeLabel for="properties" value="Slider2" />
                                <input type="file" :ref="ImageV" v-on:change="handleFileUpload3($event)" />

                                <span className="text-red-600" v-if="form.errors.Description">
                                    {{ form.errors.Description }}
                                </span>
                            </div>
                            <div>
                                <BreezeLabel for="properties" value="Slider3" />
                                <input type="file" :ref="ImageV" v-on:change="handleFileUpload4($event)" />

                                <span className="text-red-600" v-if="form.errors.Description">
                                    {{ form.errors.Description }}
                                </span>
                            </div>
                            <div>
                                <BreezeLabel for="properties" value="Slider4" />
                                <input type="file" :ref="ImageV" v-on:change="handleFileUpload5($event)" />

                                <span className="text-red-600" v-if="form.errors.Description">
                                    {{ form.errors.Description }}
                                </span>
                            </div>
                            <div>
                                <BreezeLabel for="properties" value="Slider5" />
                                <input type="file" :ref="ImageV" v-on:change="handleFileUpload6($event)" />

                                <span className="text-red-600" v-if="form.errors.Description">
                                    {{ form.errors.Description }}
                                </span>
                            </div>
                            <div>
                                <BreezeLabel for="properties" value="Slider6" />
                                <input type="file" :ref="ImageV" v-on:change="handleFileUpload7($event)" />

                                <span className="text-red-600" v-if="form.errors.Description">
                                    {{ form.errors.Description }}
                                </span>
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
import BreezeInput from "@/Components/TextInput.vue";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import { Head, Link, useForm } from "@inertiajs/vue3";
import BreezeLabel from "@/Components/InputLabel.vue";
import { ref } from "vue";

var ImageV = ref(null);

const form = useForm({
    properties: "",
    StreetAddress: "",
    ApartmentNumber: "",
    City: "",
    PostalCode: "",
    Type: "",
    Price: "",
    Bedrooms: "",
    Bathrooms: "",
    SquareFeet: "",
    Description: "",
    Image: "",
    Image1: "",
    Image2: "",
    Image3: "",
    Image4: "",
    Image5: "",
    Image6: "",
    Image7: "",
    Features: "",
    OwnerName: "",
    OwnerEmail: "",
    OwnerPhone: "",
});

const handleFileUpload = (e) => {
    console.log(e);
    form.Image = e.target.files[0];
};

const handleFileUpload2 = (e) => {
    console.log(e);
    form.Image1 = e.target.files[0];
};

const handleFileUpload3 = (e) => {
    console.log(e);
    form.Image2 = e.target.files[0];
};

const handleFileUpload4 = (e) => {
    console.log(e);
    form.Image3 = e.target.files[0];
};

const handleFileUpload5 = (e) => {
    console.log(e);
    form.Image4 = e.target.files[0];
};

const handleFileUpload6 = (e) => {
    console.log(e);
    form.Image5 = e.target.files[0];
};

const handleFileUpload7 = (e) => {
    console.log(e);
    form.Image6 = e.target.files[0];
};

const handleFileUpload8 = (e) => {
    console.log(e);
    form.Image7 = e.target.files[0];
};

const props = defineProps({
    cities: Array,
});

const submit = () => {
    form.post(route("properties.store"));
};

</script >

<script>
import axios from 'axios';
import Compressor from 'compressorjs';
export default {
    data: () => ({
        file: null,
    }),
    methods: {
        onChange(e) {
            this.file = e.target.files[0];
        },
        upload() {
            if (this.isLt2MB(this.file)) {
                this.uploadWithoutCompressing(this.file)
                return;
            }
            new Compressor(this.file, {
                quality: 0.2,
                success(result) {
                    const myFile = new File([result], result.name, {
                        type: result.type
                    })
                    let fd = new FormData()
                    fd.append('file', myFile);
                    axios.post('properties.store', fd).then(res => {
                        console.log("Uplaoded: ", res.data)
                    }).catch(err => console.log(err.response))
                }
            })
        },
        remove() {
            axios.put('properties.store', { name: this.file.name }).then(res => {
                console.log("Removed: ", res.data)
            }).catch(err => console.log(err.response))
        },
        uploadWithoutCompressing(file) {
            let fd = new FormData()
            fd.append('file', file);
            axios.put('properties.store', fd).then(res => {
                console.log("Uplaoded: ", res.data)
            }).catch(err => console.log(err.response))
        },
        isLt2MB(file) {
            return file.size / 1024 / 1024 < 2;
        },
    }
}
</script>
