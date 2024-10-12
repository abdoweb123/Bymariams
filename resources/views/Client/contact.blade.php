@extends('Client.layouts.layout')
@section('content')
    <div class="bread position-relative">
        <div class="in_bread">
            <div class="container w-100 h-100 mt-5">
                <div class="d-flex {{--justify-content-center align-items-center--}} w-100 h-100">
                   <h1>{{ trans('trans.contact_us') }}</h1>
                </div>
            </div>
        </div>
    </div>
    <style>
        .form-control-up {
            padding: 6px;
            border: none;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px
        }

        .input-label {
            display: block;
            position: relative;
            margin-top: 2%;
            margin-left: 2%;
            border-bottom: 1px solid rgb(42, 42, 42);
            margin: 35px;
        }

        .placeholder-text {
            position: absolute;
            @if(lang('en'))
            left: 12px;
            @else
            right: 12px;
            @endif
            top: 10px;
            padding: 0px 4px;
            color: rgb(42, 42, 42);
            transform-origin: top left;
            transition: all 120ms ease-in;
        }

        .form-control-up:focus+.placeholder-text,
        .form-control-up:not(:placeholder-shown)+.placeholder-text {
            top: -20px;
            transform: scale(1);
            font-weight: bold;
            background-color: #fff;
        }
    </style>


    <div class="container" style="min-height: 200px;">
        <div class="row py-5">
            <div class="col-md-8 mx-auto">
                <div class="m-2 wrapper">
                    <p style="margin: 35px;">@lang('trans.ContactMessage')</p>

                    <form method="POST" action="{{ route('client.contact') }}">
                        @csrf

                        <div class="input-label">
                            <input required type="text" class="form-control-up" name="name" autocomplete="off" placeholder=" " >
                            <span class="placeholder-text" for="">@lang('trans.name')</span>
                        </div>
                        <div class="input-label">
                            <input required type="text" class="form-control-up" name="email" autocomplete="off" placeholder=" " >
                            <span class="placeholder-text" for="">@lang('trans.email')</span>
                        </div>
                        <div class="input-label">
                            <input required type="text" class="form-control-up" name="phone" autocomplete="off" placeholder=" " >
                            <span class="placeholder-text" for="">@lang('trans.phone')</span>
                        </div>
                        <div class="input-label">
                            <input required type="text" class="form-control-up" name="subject" autocomplete="off" placeholder=" " >
                            <span class="placeholder-text" for="">@lang('trans.subject')</span>
                        </div>
                        <div class="input-label">
                            <input required type="text" class="form-control-up" name="message" autocomplete="off" placeholder=" " >
                            <span class="placeholder-text" for="">@lang('trans.message')</span>
                        </div>
                        <div class="mb-3 w-100 d-flex justify-content-center">
                            <button type="submit"  class="px-5 btn btn-dark px-4 btn m-auto border border-1 border-dark rounded-3 gap-2 my-2 py-2 ">@lang('trans.Submit')</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script>
        // JavaScript for label effects only
        $(window).load(function() {
            $(".col-3 input").val("");

            $(".input-effect input").focusout(function() {
                if ($(this).val() != "") {
                    $(this).addClass("has-content");
                } else {
                    $(this).removeClass("has-content");
                }
            })
        });
    </script>
@endsection
