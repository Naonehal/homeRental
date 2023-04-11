<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\PropertyController;
use App\Http\Controllers\CityController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Models\Property;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return Inertia::render('frontEnd/index');
})->name('index');

Route::get('/listing', function () {
    $properties = Property::all();
    return Inertia::render('frontEnd/listing', ['properties' => $properties]);
})->name('listing');

Route::get('/about', function () {
    return Inertia::render('frontEnd/about');
})->name('about');

Route::get('/contact', function () {
    return Inertia::render('frontEnd/contact');
})->name('contact');

Route::get('/listing-view/{id?}', function ($id) {
    $property = Property::find($id);
    return Inertia::render('frontEnd/listing-view', ['property' => $property]);
})->name('listing-view');

Route::resource('properties', PropertyController::class);

Route::resource('cities', CityController::class);

Route::get('/admin', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});


Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::post('upload-file', 'Create@upload');
Route::post('remove-file', 'Create@remove');

require __DIR__ . '/auth.php';
