@extends('user.master')
@section('content')
    <h2 class="text-center py-5">HI {{Auth::user()->name}}</h2>
@endsection
