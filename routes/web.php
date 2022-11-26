<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\HomeController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\BrandController;
use App\Http\Controllers\admin\ProductController;
use App\Http\Controllers\DashboardController;
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

Route::get('/',[\App\Http\Controllers\HomeController::class,'home'])->name('user.home');
Route::get('/product-detail/{id}',[\App\Http\Controllers\HomeController::class,'productDetail'])->name('product.detail');
Route::get('/product/category/{id}',[\App\Http\Controllers\HomeController::class,'getCategoryById'])->name('product.category');
Route::get('/product/brand/{id}',[\App\Http\Controllers\HomeController::class,'getBrandById'])->name('product.brand');

Route::prefix('admin')->middleware(['auth','isAdmin'])->group(function (){
    //admin
    Route::get('/',[App\Http\Controllers\admin\HomeController::class,'home'])->name('admin.home');

    //category section
        Route::resource('/category',CategoryController::class);

    //brand section
        Route::resource('/brand',BrandController::class);

    //Product section
        Route::resource('/product',ProductController::class);
});


Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () {
    Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');
});
