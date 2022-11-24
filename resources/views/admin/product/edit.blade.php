@extends('admin.master')
@section('title')
    Edit Product Page
@endsection

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8  mx-auto">
                    <div class="card bg-info">
                        <div class="card-header text-center">Edit Product Form</div>

                        <dv class="card-body">
                            <form action="{{route('product.update',$product->id)}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Category Name:</label>
                                    <div class="col-md-9">
                                        <select name="category_id" class="form-control" id="">
                                            <option disabled>--category--</option>
                                            @foreach($categories as $category)
                                                <option value="{{$category->id}}" {{$category->id==$product->category_id?'selected':''}}>{{$category->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Brand Name:</label>
                                    <div class="col-md-9">
                                        <select name="brand_id" class="form-control" id="">
                                            <option disabled>--brand--</option>
                                            @foreach($brands as $brand)
                                                <option value="{{$brand->id}}" {{$brand->id==$product->brand_id?'selected':''}}>{{$brand->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Title:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="title" value="{{$product->title}}"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Description:</label>
                                    <div class="col-md-9">
                                        <textarea name="description" class="form-control" id="" cols="30" rows="5">{{$product->description}}</textarea>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Image:</label>
                                    <div class="col-md-9">
                                        <input type="file" class="form-control" name="image"/>
                                        <img src="{{asset($product->image)}}" width="200" alt="">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Code:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="code" value="{{$product->code}}"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-outline-success px-5" value="Update"/>
                                    </div>
                                </div>
                            </form>
                        </dv>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection


