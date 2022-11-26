@extends('user.master')
@section('content')
{{--    <x-guest-layout>--}}
{{--        <x-jet-authentication-card>--}}
{{--            <x-slot name="logo">--}}
{{--                <x-jet-authentication-card-logo />--}}
{{--            </x-slot>--}}

{{--            <x-jet-validation-errors class="mb-4" />--}}

{{--            @if (session('status'))--}}
{{--                <div class="mb-4 font-medium text-sm text-green-600">--}}
{{--                    {{ session('status') }}--}}
{{--                </div>--}}
{{--            @endif--}}

{{--            <form method="POST" action="{{ route('login') }}">--}}
{{--                @csrf--}}

{{--                <div>--}}
{{--                    <x-jet-label for="email" value="{{ __('Email') }}" />--}}
{{--                    <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />--}}
{{--                </div>--}}

{{--                <div class="mt-4">--}}
{{--                    <x-jet-label for="password" value="{{ __('Password') }}" />--}}
{{--                    <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />--}}
{{--                </div>--}}

{{--                <div class="block mt-4">--}}
{{--                    <label for="remember_me" class="flex items-center">--}}
{{--                        <x-jet-checkbox id="remember_me" name="remember" />--}}
{{--                        <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>--}}
{{--                    </label>--}}
{{--                </div>--}}

{{--                <div class="flex items-center justify-end mt-4">--}}
{{--                    @if (Route::has('password.request'))--}}
{{--                        <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('password.request') }}">--}}
{{--                            {{ __('Forgot your password?') }}--}}
{{--                        </a>--}}
{{--                    @endif--}}

{{--                    <x-jet-button class="ml-4">--}}
{{--                        {{ __('Log in') }}--}}
{{--                    </x-jet-button>--}}
{{--                </div>--}}
{{--            </form>--}}
{{--        </x-jet-authentication-card>--}}
{{--    </x-guest-layout>--}}

<section class="py-3 bg-light">
    <div class="container">
        <div class="row ">
            <div class="col-md-6 mx-auto d-flex align-items-center justify-content-center" style="padding-top: 160px; padding-bottom: 180px">
                <form action="{{route('login')}}" method="POST">
                    @csrf
                        <div class="card card-body">
                            <div class="row mb-3">
                                <label for="" >Email:</label>
                                <div >
                                    <input type="email" class="form-control" name="email" required >
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="" >Password:</label>
                                <div >
                                    <input type="password" class="form-control" name="password" required >
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="text-center">
                                    <input type="submit" class="btn btn-sm form-control btn-secondary " value="Submit">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
