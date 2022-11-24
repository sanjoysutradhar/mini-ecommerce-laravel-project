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
                            <th>Category Name</th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($categories as $category)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$category->name}}</td>
                                <td>
                                    <img src="{{asset($category->image)}}" width="150" alt="">
                                </td>
                                <td>
                                    <a href="{{route('category.show',$category->id)}}" class="btn btn-sm btn-primary float-start me-2">View</a>
                                    <a href="{{route('category.edit',$category->id)}}" class="btn btn-sm btn-success float-start me-2">Edit</a>
                                    <form action="{{route('category.destroy',$category->id)}}" class="float-start" method="POST">
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
