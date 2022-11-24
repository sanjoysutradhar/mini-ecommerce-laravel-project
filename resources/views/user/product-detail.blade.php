@extends('user.master')
@section('content')
    <section class="py-5 bg-info">
        <div class="container">
            <div class="row justify-content-center">
               <div class="col-md-8 mx-auto">
                   <div class="card rounded-0 border-0">
                       <img src="{{asset($product->image)}}" class="w-100" alt="">
                       <div class="card-body rounded-0 border-0 text-center">
                           <p class="fw-semibold">{{$product->title}}</p>
                           <p>Product Code: <span class="text-uppercase">{{$product->code}}</span></p>
                           <p class="text-muted">{{$product->description}}</p>
                       </div>
                   </div>
               </div>
            </div>
        </div>
    </section>
@endsection

