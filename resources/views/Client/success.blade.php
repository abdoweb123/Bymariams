@extends('Client.layouts.layout')
@section('content')

<div class="container my-5">
    <div class="row d-flex justify-content-center flex-column align-items-center">
        <img class="w-50" src="{{ asset('assets/imgs/home/3e3805322fb5a260f8adeeeb71628219.gif') }}" />
        <p class="fs-5 fw-semibold text-center">Thank you!</p>
        <p class="fs-6 fw-semibold text-secondary text-center">Your order was placed successfully</p>
        <div class="py-2">
            <p class=" fw-light text-secondary d-flex justify-content-center">
                <span class="px-2">Your order number: {{ $Order->id }}</span>
            </p>
            <p class=" fw-light text-secondary d-flex justify-content-center">
                <span class="px-2">Order date: {{ $Order->created_at->format('Y-m-d') }}</span>
                <span class="px-2">at {{ $Order->created_at->format('h:m a')  }}</span>
            </p>
        </div>
        <a href="{{ route('client.shop') }}" class="text-black text-decoration-underline text-center  m-auto  gap-2 my-2  py-2">Continue shopping</a>
    </div>
</div>

@endsection
