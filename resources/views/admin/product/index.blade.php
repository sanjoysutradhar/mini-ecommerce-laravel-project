@extends('admin.master')
@section('title')
    Product Page
@endsection
@section('content')
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 class="text-success text-center">{{Session::get('message')}}</h4>
                <table class="table table-bordered table-responsive table-hover">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>title</th>
                            <th>Category Name</th>
                            <th>Brand Name</th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $product)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$product->title}}</td>
                                <td>{{$product->category->name}}</td>
                                <td>{{$product->brand->name}}</td>
                                <td>
                                    <img src="{{asset($product->image)}}" width="150" alt="">
                                </td>
                                <td>
                                    <a href="{{route('product.show',$product->id)}}" class="btn btn-sm btn-primary float-start me-2">view</a>
                                    <a href="{{route('product.edit',$product->id)}}" class="btn btn-sm btn-success float-start me-2">edit</a>
                                    <form action="{{route('product.destroy',$product->id)}}" class="float-start me-2" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                                    </form>

                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
@endsection
