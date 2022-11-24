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
            <li><a href="{{route('user.home')}}" class="nav-link fw-semibold">User Panel</a></li>
            <li class="dropdown">
                <a href="" class="nav-link fw-semibold" data-bs-toggle="dropdown">Category</a>
                <ul class="dropdown-menu">
                    <li><a href="{{route('category.index')}}" class="nav-link">All Category</a></li>
                    <li><a href="{{route('category.create')}}" class="nav-link">Add Category</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="" class="nav-link fw-semibold" data-bs-toggle="dropdown">Brand</a>
                <ul class="dropdown-menu">
                    <li><a href="{{route('brand.index')}}" class="nav-link">All Brand</a></li>
                    <li><a href="{{route('brand.create')}}" class="nav-link">Add Brand</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="" class="nav-link fw-semibold" data-bs-toggle="dropdown">Product</a>
                <ul class="dropdown-menu">
                    <li><a href="{{route('product.index')}}" class="nav-link">All Product</a></li>
                    <li><a href="{{route('product.create')}}" class="nav-link">Add Product</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>


@yield('content')


<script src="{{asset('/')}}js/jquery-3.6.1.js"></script>
<script src="{{asset('/')}}js/bootstrap.bundle.js"></script>
</body>
</html>


