<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    public function index($id=null){
        if($id==''){
            $categories=Category::all();
            return response()->json(['categories'=>$categories],200);
        }else{
            $category=Category::find($id);
            return response()->json(compact('category'),200 );
//            return response()->json(['category'=>$category]);
        }
    }
    public function store(Request $request){
        $validator = Validator::make($request->all(), [
            'name'=>'required|string',
            'description'=>'required|string',
            'image'=>'required',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'errors' => $validator->errors(),
                'status' => Response::HTTP_BAD_REQUEST,
            ], Response::HTTP_BAD_REQUEST);
        }

        Category::newCategory($request);

        return response()->json(['message'=>'successfully created'],201);//201 means data created
    }
    public function update(Request $request,$id){
//        return $request->file('image');
        $category=Category::find($id);
        $validator= Validator::make($request->all(),[
            'name'=>'required|string',
            'description'=>'required|string',
        ]);
        if($validator->fails()){
            return response()->json(['errors'=>$validator->errors(),400]);
        }
        Category::updateCategory($request,$id);
        return response()->json(['message'=>'successfully Updated']);

    }

    public function delete(Request $request,$id){
//        return $request->header('Authorization');
        if (!empty(Category::find($id))){
            if($request->header('Authorization')){
                $header='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTUsIm5hbWUiOiJraWRzIiwiZGVzY3JpcHRpb24iOiJ0aGlzIGlzIGtpZHMgZGVzY3JpcHRpb24iLCJpbWFnZSI6ImltZy9jYXRlZ29yeS1pbWFnZXMvMTY2OTM4MzE2OS5qcGVnIiwic3RhdHVzIjoxLCJjcmVhdGVkX2F0IjoiMjAyMi0xMS0yNVQxMzozMjo0OS4wMDAwMDBaIiwidXBkYXRlZF9hdCI6IjIwMjItMTEtMjVUMTM6MzI6NDkuMDAwMDAwWiJ9.sqK-ycZwe8LIqyaQPRPH5JWX-_aQIyXXU28mnKJRPFc';
                if($request->header('Authorization')==$header){
                    Category::destroyCategory($id);
                    return response()->json(['message'=>'Category deleted Successfully']);
                }else{
                    return response()->json(['message'=>'Invalid Authorization']);
                }
            }
            else{
                return response()->json(['message'=>'Authorization is required']);
            }
        }else{
            return response()->json(['message'=>'Id not found']);
        }


    }
}
