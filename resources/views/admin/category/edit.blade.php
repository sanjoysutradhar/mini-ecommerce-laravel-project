@extends('admin.master')
@section('title')
    Update Category Page
@endsection

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8  mx-auto">
                    <div class="card bg-info">
                        <div class="card-header text-center">Edit Category Form</div>
                        <h4 class="text-success text-center">{{Session::get('message')}}</h4>
                        <dv class="card-body">
                            <form action="{{route('category.update',$category->id)}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Name:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="name" value="{{$category->name}}"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Description:</label>
                                    <div class="col-md-9">
                                        <textarea name="description" class="form-control" id="" cols="30" rows="5">{{$category->description}}</textarea>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Image:</label>
                                    <div class="col-md-9">
                                        <input type="file" class="form-control" name="image"/>
                                        <img src="{{asset($category->image)}}" alt="" width="250">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-outline-success px-5" value="Update Category"/>
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


