@php
$categories=\App\Models\Category::all();
$brands=\App\Models\Brand::all();
@endphp
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('/')}}css/bootstrap.css"/>
    <link rel="stylesheet" href="{{asset('/')}}css/all.css"/>
    <link rel="stylesheet" href="{{asset('/')}}css/style.css"/>
    <title>@yield('title')</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light bg-light shadow">
    <div class="container">
        <a class="navbar-brand" href="">Laravel Ecommerce</a>
        <ul class="navbar-nav">
            <li><a href="{{route('user.home')}}" class="nav-link fw-semibold">Home</a></li>
            <li class="dropdown">
                <a href="" class="nav-link dropdown-toggle fw-semibold" data-bs-toggle="dropdown">Category</a>
                <ul class="dropdown-menu">
                    @foreach($categories as $category)
                    <li><a href="{{route('product.category',$category->id)}}" class="nav-link">{{$category->name}}</a></li>
                    @endforeach
                </ul>
            </li>
            <li class="dropdown">
                <a href="" class="nav-link dropdown-toggle fw-semibold" data-bs-toggle="dropdown">Brand</a>
                <ul class="dropdown-menu">
                    @foreach($brands as $brand)
                        <li><a href="{{route('product.brand',$brand->id)}}" class="nav-link">{{$brand->name}}</a></li>
                    @endforeach
                </ul>
            </li>


            @if(isset(Auth::user()->id))
                @php
                $user=explode(' ',Auth::user()->name);
                @endphp
    {{--            <li><a href="{{route('dashboard')}}" class="nav-link text-uppercase fw-bold ">{{$user[0]}}</a></li>--}}
                <li class="dropdown">
                    <a href="{{route('dashboard')}}" class="nav-link dropdown-toggle text-uppercase fw-bold" data-bs-toggle="dropdown">{{$user[0]}}</a>
                    <ul class="dropdown-menu">
                        <li><a href="" class="nav-link" onclick="event.preventDefault(); document.getElementById('logoutForm').submit();">Logout</a></li>
                        <form action="{{route('logout')}}" id="logoutForm" method="POST">
                            @csrf
                        </form>
                    </ul>
                </li>
                @if(Auth::user()->role==1)
                    <li><a href="{{route('admin.home')}}" class="nav-link  fw-semibold">Admin Panel</a></li>
                @endif
            @else
                <li><a href="{{route('login')}}" class="nav-link fw-semibold">Login</a></li>
                <li><a href="{{route('register')}}" class="nav-link fw-semibold">Registration</a></li>
            @endif

        </ul>
    </div>
</nav>


@yield('content')


<script src="{{asset('/')}}js/jquery-3.6.1.js"></script>
<script src="{{asset('/')}}js/bootstrap.bundle.js"></script>
</body>
</html>
