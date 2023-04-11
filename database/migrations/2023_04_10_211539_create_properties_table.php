<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('properties', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('StreetAddress');
            $table->string('ApartmentNumber');
            $table->string('City');
            $table->string('PostalCode');
            $table->string('Type');
            $table->string('Price');
            $table->string('Bedrooms');
            $table->string('Bathrooms');
            $table->string('SquareFeet');
            $table->string('Description');
            $table->string('Image');
            $table->JSON('Features');
            $table->string('OwnerName');
            $table->string('OwnerEmail');
            $table->string('OwnerPhone');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('properties');
    }
};
