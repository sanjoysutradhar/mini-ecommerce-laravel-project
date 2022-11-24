@extends('user.master')
@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <h3 class="text-center">Product</h3>

                @foreach($products as $product)
                    <div class="col-md-3 mb-3">
                        <div class="card h-100">
                            <img src="{{asset($product->image)}}" class="card-img" alt="">
                            <div class="card-body">
                                <p>{{$product->title}}</p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="{{route('product.detail',$product->id)}}" class="btn btn-sm btn-success">Read More</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>


    <section class="py-5">
        <div class="container">
            <div class="row">
                <h3 class="text-center">Category</h3>
                @foreach($categories as $category)
                    <div class="col-md-4 mb-3">
                        <div class="card h-100">
                            <a href="{{route('product.category',$category->id)}}">
                                <img src="{{asset($category->image)}}" class="card-img" height="350" alt="">
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <section class="py-5">
        <div class="container">
            <div class="row">
                <h3 class="text-center">Brand</h3>
                @foreach($brands as $brand)
                    <div class="col-md-4 mb-3">
                        <div class="card h-100">
                            <a href="{{route('product.brand',$brand->id)}}">
                                <img src="{{asset($brand->image)}}" class="card-img" height="350" alt="">
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
