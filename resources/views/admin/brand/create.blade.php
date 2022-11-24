@extends('admin.master')
@section('title')
    Add Brand Page
@endsection

@section('content')
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8  mx-auto">
                    <div class="card bg-info">
                        <div class="card-header text-center">Add Brand Form</div>
                        <h4 class="text-success text-center">{{Session::get('message')}}</h4>
                        <dv class="card-body">
                            <form action="{{route('brand.store')}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Name:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="name" placeholder="Brand name"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Description:</label>
                                    <div class="col-md-9">
                                        <textarea name="description" class="form-control" id="" cols="30" rows="5"></textarea>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3">Image:</label>
                                    <div class="col-md-9">
                                        <input type="file" class="form-control" name="image"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="" class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-outline-success px-5" value="Create new Brand"/>
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

