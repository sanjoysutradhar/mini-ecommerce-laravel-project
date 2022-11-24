<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    private static $product,$image,$directory,$imageName,$imageUrl,$imageExtension;
    public static function getImageUrl($request){
        self::$image=$request->file('image');
        self::$imageExtension= self::$image->getClientOriginalExtension();
        self::$imageName=time().'.'.self::$imageExtension;
        self::$directory='img/product-images/';
        self::$image->move(self::$directory,self::$imageName);
        return self::$directory.self::$imageName;
    }

    public static function newProduct($request){
//        self::$product=new Product();
        self::saveBasicInfo(new Product(), $request, self::getImageUrl($request));

//        self::$product->category_id=$request->category_id;
//        self::$product->brand_id=$request->brand_id;
//        self::$product->title=$request->title;
//        self::$product->description=$request->description;
//        self::$product->image=self::getImageUrl($request);
//        self::$product->code=$request->code;
//        self::$product->save();
    }
    public static function updateProduct($request,$id)
    {
        self::$product = Product::find($id);
        if ($request->file('image')) {
            if (file_exists(self::$product->image)) {
                unlink(self::$product->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        } else {
            self::$imageUrl = self::$product->image;
        }
        self::saveBasicInfo(self::$product, $request, self::$imageUrl);
    }

    public static function saveBasicInfo($product,$request,$imageUrl){
        $product->category_id=$request->category_id;
        $product->brand_id=$request->brand_id;
        $product->title=$request->title;
        $product->description=$request->description;
        $product->image=$imageUrl;
        $product->code=$request->code;
        $product->save();
    }
    public static function deleteProduct($id){
        self::$product=Product::find($id);
        if(file_exists(self::$product->image)){
            unlink(self::$product->image);
        }
        self::$product->delete();
    }
    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function brand(){
        return $this->belongsTo(Brand::class);
    }
}
