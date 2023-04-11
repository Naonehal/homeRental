<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Property;
use Inertia\Inertia;
use App\Models\City;
use Termwind\Components\Dd;

class PropertyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $properties = Property::all();
        // dd($properties);
        return Inertia::render('admin/Properties/Index', ['properties' => $properties]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $cities = City::all();
        return Inertia::render('admin/Properties/Create', ['cities' => $cities]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //

        $property = new Property;
        $property->StreetAddress = $request['StreetAddress'];
        $property->ApartmentNumber = $request['ApartmentNumber'];
        $property->City = $request['City'];
        $property->PostalCode = $request['PostalCode'];
        $property->Type = $request['Type'];
        $property->Price = $request['Price'];
        $property->Bedrooms = $request['Bedrooms'];
        $property->Bathrooms = $request['Bathrooms'];
        $property->SquareFeet = $request['SquareFeet'];
        $property->Description = $request['Description'];
        $name = $request->file('Image')->getClientOriginalName();
        $request->file('Image')->storeAs('public/images', $name);
                $property->Image = $name;

        $name = $request->file('Image1')->getClientOriginalName();
        $request->file('Image1')->storeAs('public/images', $name);
                $property->Image1= $name;

        $name = $request->file('Image2')->getClientOriginalName();
        $request->file('Image2')->storeAs('public/images', $name);
                $property->Image2 = $name;

        $name = $request->file('Image3')->getClientOriginalName();
        $request->file('Image3')->storeAs('public/images', $name);
                $property->Image3 = $name;

        $name = $request->file('Image4')->getClientOriginalName();
        $request->file('Image4')->storeAs('public/images', $name);
                $property->Image4 = $name;

        $name = $request->file('Image5')->getClientOriginalName();
        $request->file('Image5')->storeAs('public/images', $name);
                $property->Image5 = $name;

        $name = $request->file('Image6')->getClientOriginalName();
        $request->file('Image6')->storeAs('public/images', $name);
                $property->Image6 = $name;

        //dd($property);
        $property->Features = $request['Features'];
        $property->OwnerName = $request['OwnerName'];
        $property->OwnerEmail = $request['OwnerEmail'];
        $property->OwnerPhone = $request['OwnerPhone'];
        // dd($property);
        $property->save();
        return redirect()->route('properties.index');

      }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        $properties = Property::find()->where('City', $id)->all();
        return Inertia::render('frontEnd/SearchResults', ['properties' => $properties]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $cities = City::all();
        $property = Property::find($id);
        //dd($property);
        return Inertia::render('admin/Properties/Edit', ['property' => $property, 'cities' => $cities]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $property = Property::find($id);
        $property->StreetAddress = $request['StreetAddress'];
        $property->ApartmentNumber = $request['ApartmentNumber'];
        $property->City = $request['City'];
        $property->PostalCode = $request['PostalCode'];
        $property->Type = $request['Type'];
        $property->Price = $request['Price'];
        $property->Bedrooms = $request['Bedrooms'];
        $property->Bathrooms = $request['Bathrooms'];
        $property->SquareFeet = $request['SquareFeet'];
        $property->Description = $request['Description'];
        $property->Image = $request['Image'];
        $property->Features = $request['Features'];
        $property->OwnerName = $request['OwnerName'];
        $property->OwnerEmail = $request['OwnerEmail'];
        $property->OwnerPhone = $request['OwnerPhone'];
        $property->save();
        return redirect()->route('properties.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        $property = Property::find($id);
        $property->delete();
        return redirect()->route('properties.index');
    }
}
