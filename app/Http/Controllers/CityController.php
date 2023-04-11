<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\City;
use Illuminate\Http\Request;

class CityController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $cities = City::all();
        return Inertia::render('admin/Cities/Index', ['cities' => $cities]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return Inertia::render('admin/Cities/Create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'cities' => 'required'
        ]);
        $city = new City;
        $city->name = $request['cities'];
        $city->save();
        return redirect()->route('cities.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        // $cities = City::find($id);
        // return Inertia::render('admin/Cities/Show', ['id' => $cities]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $city = City::find($id);
        return Inertia::render('admin/Cities/Edit', ['city' => $city]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $request->validate([
            'cities' => 'required'
        ]);
        $city = City::find($id);
        $city->name = $request['cities'];
        $city->save();
        return redirect()->route('cities.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        $city = City::find($id)->delete();
        return redirect()->route('cities.index');
    }
}
