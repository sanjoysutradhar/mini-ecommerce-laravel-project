<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\HomeController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\BrandController;
use App\Http\Controllers\admin\ProductController;
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


//admin
Route::get('/admin',[App\Http\Controllers\admin\HomeController::class,'home'])->name('admin.home');

//category section
Route::resource('/category',CategoryController::class);

//brand section
Route::resource('/brand',BrandController::class);

//Product section
Route::resource('/product',ProductController::class);
