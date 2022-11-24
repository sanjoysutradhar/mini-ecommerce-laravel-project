@extends('admin.master')
@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mx-auto">
                    <h4 class="text-success text-center">{{Session::get('message')}}</h4>
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>SL</th>
                            <th>Brand Name</th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($brands as $brand)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$brand->name}}</td>
                                <td>
                                    <img src="{{asset($brand->image)}}" width="150" alt="">
                                </td>
                                <td>
                                    <a href="{{route('brand.show',$brand->id)}}" class="btn btn-sm btn-primary float-start me-2">View</a>
                                    <a href="{{route('brand.edit',$brand->id)}}" class="btn btn-sm btn-success float-start me-2">Edit</a>
                                    <form action="{{route('brand.destroy',$brand->id)}}" class="float-start" method="POST">
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

