<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    use HasFactory;
    private static $brand,$image,$directory,$imageName,$imageUrl,$imageExtension;
    public static function getImageUrl($request){
        self::$image=$request->file('image');
        self::$imageExtension= self::$image->getClientOriginalExtension();
        self::$imageName=time().'.'.self::$imageExtension;
        self::$directory='img/brand-images/';
        self::$image->move(self::$directory,self::$imageName);
        return self::$directory.self::$imageName;
    }

    public static function newBrand($request){
        self::saveBasicInfo(new Brand(), $request, self::getImageUrl($request));
    }

    public static function updateBrand($request,$id){
        self::$brand=Brand::find($id);
        if($request->file('image')){
            if(file_exists(self::$brand->image)){
                unlink(self::$brand->image);
            }
            self::$imageUrl=self::getImageUrl($request);
        }else{
            self::$imageUrl=self::$brand->image;
        }
        self::saveBasicInfo(self::$brand, $request, self::$imageUrl);
    }

    public static function saveBasicInfo($brand,$request,$imageUrl){
        $brand->name=$request->name;
        $brand->description=$request->description;
        $brand->image=$imageUrl;
        $brand->save();
    }
    public static function destroyBrand($id){
        self::$brand=Brand::find($id);
        if(file_exists(self::$brand->image)){
            unlink(self::$brand->image);
        }
        self::$brand->delete();
    }
    public function products(){
        return $this->hasMany(Product::class);
    }
}
