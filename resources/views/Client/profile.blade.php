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


<div class="container section-top my-5">
    <div class="row profile" style="column-gap: 10px;">
        <div class="col-lg-3 ">
            <div class="nav flex-lg-column flex-row  nav-pills  px-4 py-5 bg-black d-block d-md-flex" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <button class="nav-link w-100  active  my-1" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">
                    <div class="row">
                        <div class=" col-12 d-flex flex-column justify-content-center text-center">
                            <h6 class="fw-bold  py-2 my-0 text-uppercase">
                                @lang('trans.Account Info')
                            </h6>
                        </div>
                    </div>
                </button>
                <button class="nav-link w-100  my-1" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                    <div class="row">
                        <div class="col-12 d-flex flex-column justify-content-center text-center">
                            <h6 class="fw-bold py-2 my-0 text-uppercase">
                                @lang('trans.Current Orders')
                            </h6>

                        </div>
                    </div>
                </button>
                <button class="nav-link w-100  my-1" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                    <div class="row">
                        <div class="col-12 d-flex flex-column justify-content-center text-center">
                            <h6 class="fw-bold  py-2 my-0 text-uppercase">
                                @lang('trans.Last Orders')
                            </h6>
                        </div>
                    </div>
                </button>
            </div>
        </div>

        <div class="col-lg-8 col-12" style="min-height: 70vh;">
            <div class="row ">
                <div class="col-12 ">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">
                            <div class="border border-1 border-black px-2">
                                <div class="row gap-2 my-5 p-2 ">
                                    <div class="col-12 d-grid gap-2 d-md-flex justify-content-md-end px-3">
                                        <a href="{{ route('client.edit-profile') }}" class="text-secondary text-decoration-underline">@lang('trans.Edit')</a>
                                    </div>
                                    <div class="col-12">
                                        <h6>
                                            @lang('trans.name')
                                        </h6>
                                        <p class="fw-bolder">
                                            {{ $Client->name }}
                                        </p>
                                    </div>
                                    <div class="col-12">
                                        <h6>
                                            @lang('trans.Phone')
                                        </h6>
                                        <p class="fw-bolder">
                                            {{ $Client->phone }}
                                        </p>
                                    </div>
                                    @if ($Client->email)
                                    <div class="col-12">
                                        <h6>
                                            @lang('trans.Email')
                                        </h6>
                                        <p class="fw-bolder">
                                            {{ $Client->email }}
                                        </p>
                                    </div>
                                    @endif

                                    <div class="col-12">
                                        <h6>
                                            @lang('trans.Address')
                                        </h6>
                                        @foreach ($addresses as $address)
                                        <div class="form-check d-flex justify-content-between align-items-center">
{{--                                            <label class="form-check-label">--}}
{{--                                                {{ $address->additional_directions }}--}}
{{--                                            </label>--}}
                                            @if( $address->country->id == '1' ) <!-- Check if region_id is present -->
                                            <label value="{{ $address->id }}" {{ old('address_id', $address->region_id) == $address->id ? 'selected' : '' }}>
                                                {{ $address->country['title_'.lang()] ?? '' }} - {{ $address->region['title_'.lang()] ?? '' }} - {{ $address->block ?? '' }} {{ $address->road ?? '' }} {{ $address->building_no ?? '' }}
                                            </label>
                                            @else
                                                <label value="{{ $address->id }}" {{ old('address_id', $address->region_id) == $address->id ? 'selected' : '' }}>
                                                    {{ $address->country['title_'.lang()] ?? '' }} - {{ $address->city ?? '' }} - {{ $address->address1 ?? '' }} {{ $address->address2 ?? '' }}
                                                </label>
                                            @endif
                                            <div class="d-flex justify-content-md-end">
                                                <a href="{{ route('client.address.edit',$address) }}" class="text-secondary text-decoration-underline px-2" type="button">
                                                    @lang('trans.Edit')
                                                </a>
                                                <form action="{{ route('client.address.destroy',$address) }}" method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button style="display: contents" type="submit">
                                                        <span class="text-danger text-decoration-underline">
                                                            @lang('trans.Delete')
                                                        </span>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>


                                    <div class="col-12">
                                        <div class="py-2 my-2">
                                            <a href="{{ route('client.address.create') }}">
                                                <span>
                                                    <i class="fa-solid fa-plus"></i>
                                                </span>
                                                <span>
                                                    @lang('trans.addAddress')
                                                </span>
                                            </a>
                                        </div>


                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center my-5">
                                <a class="text-danger text-decoration-underline w-auto px-5" type="button" href="{{ route('client.logout') }}">
                                    @lang('trans.logout')
                                </a>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0">
                            <div class="row py-2">
                                @if($currentOrders->count())        
                                    @foreach ($currentOrders as $Order)
                                        <div class="col-12">
                                            @include('Client.layouts.order',['Order'=>$Order])
                                        </div>
                                    @endforeach
                                @else
                                <div class="text-center my-5">
                                    <img class="d-block m-auto" style="max-width: 300px" src="{{ asset('assets/imgs/empaty/Group.svg') }}">
                                </div>
                                <div class="text-center my-5">
                                    @lang('trans.You Have No Orders')
                                </div>
                                @endif
                            </div>
                        </div>
                        <div class="tab-pane fade " id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" tabindex="0">
                            <div class="row py-2">
                                @if($previousOrders->count())
                                    @foreach ($previousOrders as $Order)
                                        <div class="col-12">
                                            @include('Client.layouts.order',['Order'=>$Order])
                                        </div>
                                    @endforeach
                                @else
                                
                                    <div class="text-center my-5">
                                        <img class="d-block m-auto" style="max-width: 300px" src="{{ asset('assets/imgs/empaty/Group.svg') }}">
                                    </div>
                                    <div class="text-center my-5">
                                        @lang('trans.You Have No Orders')
                                    </div>
                                @endif
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



@endsection
