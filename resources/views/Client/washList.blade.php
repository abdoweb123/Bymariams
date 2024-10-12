@extends('Client.layouts.layout')

@section('content')

<div class="container  section-top">
    <div class="row align-items-center">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-5">
                <li class="breadcrumb-item">
                    <a href="{{ route('client.home') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22" fill="none">
                            <path d="M1.5 9.93841C1.5 8.71422 2.06058 7.55744 3.02142 6.79888L8.52142 2.45677C9.97466 1.30948 12.0253 1.30948 13.4786 2.45677L18.9786 6.79888C19.9394 7.55744 20.5 8.71422 20.5 9.93841V16.5C20.5 18.7091 18.7091 20.5 16.5 20.5H15C14.4477 20.5 14 20.0523 14 19.5V16.5C14 15.3954 13.1046 14.5 12 14.5H10C8.89543 14.5 8 15.3954 8 16.5V19.5C8 20.0523 7.55228 20.5 7 20.5H5.5C3.29086 20.5 1.5 18.7091 1.5 16.5L1.5 9.93841Z" fill="#9D9D9D" stroke="#9D9D9D" stroke-width="1.5" />
                        </svg>
                        @lang('trans.Home')
                    </a>
                </li>
                <li class="breadcrumb-item fw-semibold" aria-current="page">@lang('trans.myFavourite')</li>
            </ol>
        </nav>
    </div>
</div>

<div class="container my-2">
    <div class="row  ">
        <div class="col-lg-12">

            @if ($Products->count())
                <div class="row">
                    @foreach ($Products as $Product)
                    <div class="p-3 col-lg-4 col-md-4 col-6  position-relative ">
                        @include('Client.layouts.product',['Product'=>$Product])
                    </div>
                    @endforeach
                </div>
                <div class="col-12">
                    @if ($Products->hasPages())
                    <div class="pagination-wrapper">
                        {{ $Products->links('pagination::bootstrap-5') }}
                    </div>
                    @endif
                </div>
            @else
                <div class="row justify-content-center align-items-center">
                    <div class="img d-flex justify-content-center">
                        <img src="assets/imgs/empaty/7166991_3554477 1.svg">
                    </div>
                    <div class="py-4">
                        <p class="text-secondary text-center">@lang('trans.Data not found')</p>
                    </div>
                </div>
            @endif
           
        </div>
    </div>
</div>

@endsection
