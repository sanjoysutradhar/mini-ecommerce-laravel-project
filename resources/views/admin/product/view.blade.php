@extends('admin.master')
@section('title')Product View Page
@endsection
@section('content')
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <table class="table table-bordered table-responsive table-hover">
                    <tbody>
                        <tr>
                            <th>Id</th>
                            <td>{{$product->id}}</td>
                        </tr>
                        <tr>
                            <th>title</th>
                            <td>{{$product->title}}</td>
                        </tr>
                        <tr>
                            <th>Category Name</th>
                            <td>{{$product->category->name}}</td>
                        </tr>
                        <tr>
                            <th>Brand Name</th>
                            <td>{{$product->brand->name}}</td>
                        </tr>
                        <tr>
                            <th>Description</th>
                            <td>{{$product->description}}</td>
                        </tr>
                        <tr>
                            <th>Code</th>
                            <td>{{$product->code}}</td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td>{{$product->status}}</td>
                        </tr>
                        <tr>
                            <th>Image</th>
                            <td>
                                <img src="{{asset($product->image)}}" width="250" height="300" alt="">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
@endsection
