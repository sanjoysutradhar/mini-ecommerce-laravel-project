<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home(){
        $products=Product::orderBy('id','DESC')->limit(8)->get();
//        dd($products);
        $categories=Category::orderBy('id','DESC')->limit(3)->get();
        $brands=Brand::orderBy('id','DESC')->limit(3)->get();
        return view('user.index',compact(['products','categories','brands']));
    }
    public function productDetail($id){
        $product=Product::find($id);
//        return $product;
        return view('user.product-detail',compact('product'));
    }
    public function getCategoryById($id){
        $category=Category::find($id);
//        return $category->products;
        return view('user.category',compact('category'));
    }
    public function getBrandById($id){
        $brand=Brand::find($id);
        return view('user.brand',compact('brand'));
    }

}
