@extends('user.master')
@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row justify-content-center">
                <h3 class="text-center mb-3">Product of this <span class="text-uppercase">{{$category->name}}</span> Category</h3>

                @foreach($category->products as $product)
                    <div class="col-md-3 mb-3">
                        <div class="card h-100">
                            <img src="{{asset($product->image)}}" alt="" class="card-img">
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

@endsection
