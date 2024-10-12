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
                        @lang('trans.home')
                    </a>
                </li>
                <li class="breadcrumb-item">
                    <a href="{{ route('client.shop') }}">
                        @lang('trans.profile')
                    </a>
                </li>
            </ol>
        </nav>
    </div>
</div>

<div class="container my-5">
    <div class="row  justify-content-center">
        <div class="row col-md-6">
            <form action="{{ route('client.profile') }}" class="px-2" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="name" class="form-label">@lang('trans.name')</label>
                    <input required type="text" class="form-control rounded-3" name="name" placeholder="Ahmed" value="{{ auth('client')->user()->name }}">
                </div>
                <div class="mb-3 d-flex flex-column">
                    <label for="phone" class="form-label">@lang('trans.Phone')</label>
                    <input required type="tel" readonly class="form-control rounded-3 w-100 phone" style="opacity: 0.5;cursor: not-allowed;" name="phone" placeholder="33******" value="{{ auth('client')->user()->phone }}">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">@lang('trans.email')</label>
                    <input type="email" name="email" class="form-control rounded-3" placeholder="ah***@gmail.com" value="{{ auth('client')->user()->email }}">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">@lang('trans.password')</label>
                    <input type="password" name="password" class="form-control rounded-3" placeholder="******" >
                </div>

    
                <div class="mb-3 w-100 d-flex justify-content-center">
                    <button type="submit" class="btn btn-dark px-4 btn m-auto border border-1 border-dark rounded-3 gap-2 my-2  py-2">
                        @lang('trans.update')
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>



@endsection
