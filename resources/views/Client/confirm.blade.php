@extends('Client.layouts.layout')

@push('css')
    <!-- Select2 CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
@endpush

@section('style')
    <style>
        #otherCountries, #bahrain, #country{
            display: none;
        }
    </style>
@stop

@section('content')

<form action="{{ route('client.submit',old('delivery_id',request('delivery_id'))) }}" method="POST" id="form-submit">
    @csrf
    <div class="bg-ccc py-2">
        <div class="container">
            <div class="row">
                {{--
                <div class="col-12">
                    <div class="mx-2 mt-5 text-start">
                        <a href="{{ route('client.cart') }}" style="width: max-content;" class="btn btn-dark px-3 my-3"><i class="fa-solid fa-angle-left me-1"></i>@lang('trans.back') </a>
                    </div>
                </div>
                --}}
                
            <div class="container  section-top mt-2">
                 <div class="row align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb my-5 py-2">
                            <li class="breadcrumb-item">
                                <a href="{{ route('client.home') }}" class="d-flex align-items-center">
                                    <span class=""><svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M1.35139 12.2135C0.998371 9.91624 0.821861 8.76763 1.25617 7.74938C1.69047 6.73112 2.65403 6.03443 4.58114 4.64106L6.02099 3.6C8.41829 1.86667 9.61694 1 11 1C12.3831 1 13.5817 1.86667 15.979 3.6L17.4189 4.64106C19.346 6.03443 20.3095 6.73112 20.7438 7.74938C21.1781 8.76763 21.0016 9.91624 20.6486 12.2135L20.3476 14.1724C19.8471 17.4289 19.5969 19.0572 18.429 20.0286C17.2611 21 15.5537 21 12.1388 21H9.86119C6.44633 21 4.73891 21 3.571 20.0286C2.40309 19.0572 2.15287 17.4289 1.65243 14.1724L1.35139 12.2135Z" stroke="#0C0C0C" stroke-width="1.5" stroke-linejoin="round"/>
                                    </svg>
                                    
                                    </span>
                                    <span class="pt-1"> @lang('trans.Home')</span>
                                </a>
                            </li>
                            <li class="breadcrumb-item pt-1">
                                <a href="{{ route('client.shop') }}">
                                    @lang('trans.products')
                                </a>
                            </li>
                            <li class="breadcrumb-item fw-semibold pt-1" aria-current="page">
                               @lang('trans.checkout')
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>
                
                
                <div class="col-xl-12">
                    @if(!auth('client')->check())
                        <div class="card border shadow-none">
                            <div class="card-body">
                                <h5 class="capital my-2 fw-normal">@lang('trans.Customer Details')</h5>
                                <div class="row gy-3 bg-gray">
                                    <div class="col-12 col-md-6 form-group">
                                    
                                        <label for="name">@lang('trans.Name') <span class="text-danger">*</span> </label>
                                        <input type="text" class="form-control " name="name" value="{{ request('name') }}" id="name" required >
                                        <span class="text-danger">@error('name'){{ $message }}@enderror</span>
                                    </div>
                                    <div class="col-12 col-md-6 form-group">
                                        <div class="row position-relative {{ lang() == 'en' ? '' : 'flex-row-reverse' }}">
                                            <label for="phone">@lang('trans.mobile') <span class="text-danger">*</span></label>
                                                @if(lang('ar'))
                                                    <div class="col-7 col-md-9">
                                                        <input class="form-control" name="phone" value="{{ request('phone') }}" onkeypress="return AllowOnlyNumbers(event);" required type="number">
                                                    </div>
                                                @endif
                                                <div class="col-5 col-md-3 px-md-0">
                                                    @include('Client.layouts.phone-select')
                                                </div>
                                                @if(lang('en'))
                                                    <div class="col-7 col-md-9">
                                                        <input class="form-control" name="phone" value="{{ request('phone') }}" onkeypress="return AllowOnlyNumbers(event);" required type="number">
                                                    </div>
                                                @endif
                                            <span class="text-danger">@error('phone'){{ $message }}@enderror</span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 form-group">
                                        <label for="email">@lang('trans.email') <span class="text-danger">*</span></label>
                                        <input type="email" class="form-control" name="email" value="{{ request('email') }}" id="email" placeholder="xyz@gmail.com">
                                        <span class="text-danger">@error('email'){{ $message }}@enderror</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif

                    @if (old('delivery_id',request('delivery_id')) == 1)
                    <div class="mt-5 mt-lg-0">
                        <div class="card border shadow-none" style="text-align: inherit">
                            <div class="card-header bg-transparent border-bottom py-3 px-4">
                                <h5 class="font-size-16 mb-0">
                                    {{ Deliveries()->where('id',old('delivery_id',request('delivery_id')))->first()->title() }}
                                    {{--
                                    @if (old('delivery_id',request('delivery_id')) == 1)
                                        <img src="{{ asset('assets/imgs/delivery.png') }}" alt="delivery" style="max-width: 50px;margin: 0px 5px">
                                    @elseif (old('delivery_id',request('delivery_id')) == 2)
                                        <img src="{{ asset('assets/imgs/pickup.png') }}" alt="delivery" style="max-width: 50px;margin: 0px 5px">
                                    @else
                                        <img src="{{ asset('assets/imgs/dinein.svg') }}" alt="delivery" style="max-width: 50px;margin: 0px 5px">
                                    @endif
                                    --}}
                                </h5>
                            </div>
                            @php
                                $selectedRegionId = old('region_id') ?? '';
                            @endphp
                            <div class="card-body p-4 pt-2">
                                @if(!auth('client')->check())
                                    <div class="mt-5 mt-lg-0 bg-gray">
                                        <div class="card border shadow-none" style="text-align: inherit">
                                            <div class="p-3 pb-5 my-1 row gy-3">
                                                <div class="col-sm-12 mb-3" id="country" style="display: block" >
                                                    <label for="" class="text-secondary">@lang('trans.country') <span class="text-danger">*</span>
                                                    </label>
                                                    <select class="rounded-0 form-select form-control select2" name="country_id" id="country_id" required oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                                        {{--                                  <option value="">@lang('trans.select_country')</option>--}}
                                                        @foreach(allCountries() as $country)
                                                            <option value="{{$country->id}}" data-code="{{$country->country_code}}" {{ old('country_id', addressShipping() ? addressShipping()->country_id : '') == $country->id ? 'selected' : '' }}>{{ $country['title_'.lang()] }}</option>
                                                        @endforeach
                                                    </select>
{{--                                                    <input type="hidden" name="country_id" value="{{Country()->id}}">--}}
                                                </div>
                                                <div id="otherCountries" class="row" style="display:none">
                                                    <div class="col-sm-12 mb-3">
                                                        <label for="" class="text-secondary">@lang('trans.city')   <span class="text-danger">*</span>
                                                        </label>
                                                        <input type="text" class="form-control rounded-0" name="city" id="" value="{{ addressShipping() ? addressShipping()->city : old('city', '') }}"  oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                                    </div>
                                                    <div class="col-sm-12 mb-3">
                                                        <label for="" class="text-secondary">@lang('trans.state')
                                                        </label>
                                                        <input type="text" class="form-control rounded-0" name="state" id="" value="{{ addressShipping() ? addressShipping()->state : old('state', '') }}">
                                                    </div>
                                                    <div class="col-sm-12 mb-3">
                                                        <label for="" class="text-secondary">@lang('trans.street_address') <span class="text-danger">*</span>
                                                        </label>
                                                        <input type="text" class="form-control rounded-0 mb-3" name="address1" id="" placeholder="@lang('trans.address1')" value="{{old('address1',addressShipping()?addressShipping()->address1:'')}}"  oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                                        <input type="text" class="form-control rounded-0" name="address2" id="" placeholder="@lang('trans.address2')" value="{{old('address1',addressShipping()?addressShipping()->address2:'')}}">
                                                    </div>
                                                </div>
                                                <div id="bahrain"  style="display:block">
                                                    <div class="row">
                                                        <div class="col-sm-12 col-md-6 mb-3">
                                                            <label for="" class="text-secondary">@lang('trans.region') <span class="text-danger">*</span>
                                                            </label>
                                                            <select class="rounded-0 form-select" name="region_id" id="region_id" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                                                <option value="">@lang('trans.select_region')</option>
                                                                {{--                                                                                              <option value="{{ old('region_id', addressShipping() ? (addressShipping()->region_id ?? '') : '') }}" selected>{{addressShipping() ? (addressShipping()->region_id ? addressShipping()->region['title_'.lang()] : '') : ''}}</option>--}}
                                                                @php
                                                                    $selectedRegionId = old('region_id');
                                                                @endphp
                                                                @foreach(mainCountry()->regions as $region)
                                                                    <option value="{{ $region->id }}" {{ $region->id == $selectedRegionId ? 'selected' : '' }}>
                                                                        {{ $region['title_'.lang()] }}
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-sm-6 col-md-6 mb-3">
                                                            <label for="" class="text-secondary">@lang('trans.block') <span class="text-danger">*</span>
                                                            </label>
                                                            <input type="number" class="form-control rounded-0" name="block" min="1" value="{{ old('block', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                                        </div>
                                                        <div class="col-sm-6 col-md-6 mb-3">
                                                            <label for="" class="text-secondary">@lang('trans.road') <span class="text-danger">*</span>
                                                            </label>
                                                            <input type="number" class="form-control rounded-0" name="road" min="1" value="{{ old('road', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                                        </div>
                                                        <div class="col-sm-6 col-md-6 mb-3">
                                                            <label for="" class="text-secondary">@lang('trans.building_no') <span class="text-danger">*</span>
                                                            </label>
                                                            <input type="number" class="form-control rounded-0" name="building_no" min="1" value="{{ old('building_no', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                                        </div>
                                                        <div class="col-sm-6 col-md-6 mb-3">
                                                            <label for="" class="text-secondary">@lang('trans.floor_no') <span class="text-danger">*</span>
                                                            </label>
                                                            <input type="number" class="form-control rounded-0" name="floor_no" min="1" value="{{ old('floor_no', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                                        </div>
                                                        <div class="col-sm-6 col-md-6 mb-3">
                                                            <label for="" class="text-secondary">@lang('trans.apartment') <span class="text-danger">*</span>
                                                            </label>
                                                            <input type="number" class="form-control rounded-0" name="apartment" min="1" value="{{ old('apartment', '') }}" oninput="this.value = this.value < 1 ? 1 : this.value" required>
                                                        </div>
{{--                                                        <div class="col-sm-6 col-md-6 mb-3">--}}
{{--                                                            <label for="" class="text-secondary">@lang('trans.apartmentType')--}}
{{--                                                            </label>--}}
{{--                                                            <input type="text" class="form-control rounded-0" name="apartmentType" value="{{ old('apartmentType', '') }}">--}}
{{--                                                        </div>--}}
                                                        <div class="col-sm-6 col-md-6 mb-3">
                                                            <label for="" class="text-secondary">@lang('trans.additional_directions')
                                                            </label>
                                                            <input type="text" class="form-control rounded-0" name="additional_directions" value="{{ old('additional_directions', '') }}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                                <div class="p-3 pb-5 my-1">
                                    <input type="hidden" name="delivery_cost" id="delivery_cost" value="">
                                    @if($Addresses->count() && auth('client')->check() )
                                        <label for="Select" class="form-label">@lang('trans.Select Address') <span class="text-danger">*</span></label>
    {{--                                    <select class="form-select" name="address_id" id="address_id">--}}
    {{--                                        <option value="" selected>-----------</option>--}}
    {{--                                        @foreach ($Addresses as $Address)--}}
    {{--                                            <option value="{{ $Address->id }}">{{ $Address->region['title'.lang()] ?? '' }}</option>--}}
    {{--                                        @endforeach--}}
    {{--                                    </select>--}}
                                            <select class="form-select" name="address_id" id="address_id" required>
                                                <option value="" disabled selected>-----------</option>
                                                @foreach ($Addresses as $Address)
                                                    @if( $Address->country->id == mainCountry()->id ) <!-- Check if region_id is present -->
                                                    <option value="{{ $Address->id }}" data-code="{{ $Address->country->country_code }}" {{ old('address_id', $Address->region_id) == $Address->id ? 'selected' : '' }}>
                                                        {{ $Address->country['title_'.lang()] ?? '' }} - {{ $Address->region['title_'.lang()] ?? '' }} - {{ $Address->block ?? '' }} {{ $Address->road ?? '' }} {{ $Address->building_no ?? '' }}
                                                    </option>
                                                    @else
                                                        <option value="{{ $Address->id }}" data-code="{{ $Address->country->country_code }}" {{ old('address_id', $Address->region_id) == $Address->id ? 'selected' : '' }}>
                                                            {{ $Address->country['title_'.lang()] ?? '' }} - {{ $Address->city ?? '' }} - {{ $Address->address1 ?? '' }} {{ $Address->address2 ?? '' }}
                                                        </option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        <div class="line">@lang('trans.Or')</div>
                                         <span class="text-uppercase" id="addAddress" style="color:blue">@lang('trans.addAddress')</span>
                                        {{--<div class="row mt-1 my-5">
                                                    <label class="form-label my-3">@lang('trans.SelectYourLocation')</label>
                                                    <div class="row  position-relative" style="height: 400px;">
                                                        <div id="map"></div>
                                                        <div class="d-none d-md-block leaflet-control-geosearch">
                                                            <input type="text" id="search-input" placeholder="Search location...">
                                                            <button type="button" id="search-button">Search</button>
                                                        </div>

                                                    </div>

                                                    <input type="hidden" name="delivery_cost" id="delivery_cost" value="">
                                                    <input type="hidden" name="country_code" id="country_code" value="">
                                                    <input type="hidden" name="lat" id="lat" value="{{ $lat }}">
                                                    <input type="hidden" name="long" id="lng" value="{{ $long }}">
                                                    <div class="mb-3 my-5">
                                                        <label for="additional_directions" class="form-label">@lang('trans.additional_directions')</label>
                                                        <textarea class="form-control rounded-3" id="additional_directions" name="additional_directions" rows="5" style="resize: none;"></textarea>
                                                    </div>
                                                </div>--}}
                                        <input type="hidden" name="country_code" id="country_code" value="{{ mainCountry()->country_code }}">
                                        <div class="col-sm-12 mb-3" id="country">
                                            <label for="" class="text-secondary">@lang('trans.country') <span class="text-danger">*</span>
                                            </label>
                                            <select class="rounded-0 form-select select2 w-100"  name="country_id" id="country_id" required oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                                {{--                                  <option value="">@lang('trans.select_country')</option>--}}
                                                @foreach(allCountries() as $country)
                                                    <option value="{{$country->id}}" data-code="{{$country->country_code}}" {{ old('country_id', addressShipping() ? addressShipping()->country_id : '') == $country->id ? 'selected' : '' }}>{{ $country['title_'.lang()] }}</option>
                                                @endforeach
                                            </select>
    {{--                                        <input type="hidden" name="country_id" value="{{Country()->id}}">--}}
                                        </div>
                                        <div id="otherCountries" class="row" style="display:none">
                                        <div class="col-sm-12 mb-3">
                                            <label for="" class="text-secondary">@lang('trans.city')   <span class="text-danger">*</span>
                                            </label>
                                            <input type="text" class="form-control rounded-0" name="city" id="" value="{{ addressShipping() ? addressShipping()->city : old('city', '') }}"  oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                        </div>
                                        <div class="col-sm-12 mb-3">
                                            <label for="" class="text-secondary">@lang('trans.state')
                                            </label>
                                            <input type="text" class="form-control rounded-0" name="state" id="" value="{{ addressShipping() ? addressShipping()->state : old('state', '') }}">
                                        </div>
                                        <div class="col-sm-12 mb-3">
                                            <label for="" class="text-secondary">@lang('trans.street_address') <span class="text-danger">*</span>
                                            </label>
                                            <input type="text" class="form-control rounded-0 mb-3" name="address1" id="" placeholder="@lang('trans.address1')" value="{{old('address1',addressShipping()?addressShipping()->address1:'')}}"  oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                            <input type="text" class="form-control rounded-0" name="address2" id="" placeholder="@lang('trans.address2')" value="{{old('address1',addressShipping()?addressShipping()->address2:'')}}">
                                        </div>
                                    </div>
                                        <div id="bahrain"  style="display:none">
                                        <div class="row">
                                            <div class="col-sm-12 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.region') <span class="text-danger">*</span>
                                                </label>
                                                <select class="rounded-0 form-select" name="region_id" id="region_id" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                                    <option value="">@lang('trans.select_region')</option>
                                                    {{--                                                                                              <option value="{{ old('region_id', addressShipping() ? (addressShipping()->region_id ?? '') : '') }}" selected>{{addressShipping() ? (addressShipping()->region_id ? addressShipping()->region['title_'.lang()] : '') : ''}}</option>--}}
                                                    @foreach(mainCountry()->regions as $region)
                                                        <option value="{{ $region->id }}" {{ $region->id == $selectedRegionId ? 'selected' : '' }}>
                                                            {{ $region['title_'.lang()] }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.block')  <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="block" min="1" value="{{ old('block', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.road')  <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="road" min="1" value="{{ old('road', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.building_no')  <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="building_no" min="1" value="{{ old('building_no', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.floor_no')  <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="floor_no" min="1" value="{{ old('floor_no', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.apartment')  <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="apartment" min="1" value="{{ old('apartment', '') }}" oninput="this.value = this.value < 1 ? 1 : this.value">
                                            </div>
{{--                                            <div class="col-sm-6 col-md-6 mb-3">--}}
{{--                                                <label for="" class="text-secondary">@lang('trans.apartmentType')--}}
{{--                                                </label>--}}
{{--                                                <input type="text" class="form-control rounded-0" name="apartmentType" value="{{ old('apartmentType', '') }}">--}}
{{--                                            </div>--}}
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.additional_directions')
                                                </label>
                                                <input type="text" class="form-control rounded-0" name="additional_directions" value="{{ old('additional_directions', '') }}">
                                            </div>
                                        </div>
                                    </div>

                                    @elseif(!$Addresses->count() && auth('client')->check())
                                        <div class="col-sm-12 mb-3" id="country" style="display: block">
                                            <label for="" class="text-secondary">@lang('trans.country')  <span class="text-danger">*</span>
                                            </label>
                                            <select class="rounded-0 form-select select2" name="country_id" id="country_id" required oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                                {{--                                  <option value="">@lang('trans.select_country')</option>--}}
                                                @foreach(allCountries() as $country)
                                                    <option value="{{$country->id}}" data-code="{{$country->country_code}}" {{ old('country_id', addressShipping() ? addressShipping()->country_id : '') == $country->id ? 'selected' : '' }}>{{ $country['title_'.lang()] }}</option>
                                                @endforeach
                                            </select>
    {{--                                        <input type="hidden" name="country_id" value="{{Country()->id}}">--}}
                                        </div>
                                        <div id="otherCountries" class="row" style="display:none">
                                            <div class="col-sm-12 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.city')  <span class="text-danger">*</span>
                                                </label>
                                                <input type="text" class="form-control rounded-0" name="city" id="" value="{{ addressShipping() ? addressShipping()->city : old('city', '') }}"  oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                            </div>
                                            <div class="col-sm-12 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.state')
                                                </label>
                                                <input type="text" class="form-control rounded-0" name="state" id="" value="{{ addressShipping() ? addressShipping()->state : old('state', '') }}">
                                            </div>
                                            <div class="col-sm-12 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.street_address') <span class="text-danger">*</span>
                                                </label>
                                                <input type="text" class="form-control rounded-0 mb-3" name="address1" id="" placeholder="@lang('trans.address1')" value="{{old('address1',addressShipping()?addressShipping()->address1:'')}}"  oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                                                <input type="text" class="form-control rounded-0" name="address2" id="" placeholder="@lang('trans.address2')" value="{{old('address1',addressShipping()?addressShipping()->address2:'')}}">
                                            </div>
                                        </div>
                                        <div id="bahrain" style="display:block">
                                        <div class="row">
                                            <div class="col-sm-12 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.region') <span class="text-danger">*</span>
                                                </label>
                                                <select class="rounded-0 form-select" name="region_id" id="region_id" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                                    <option value="">@lang('trans.select_region')</option>
                                                    {{--                                                                                              <option value="{{ old('region_id', addressShipping() ? (addressShipping()->region_id ?? '') : '') }}" selected>{{addressShipping() ? (addressShipping()->region_id ? addressShipping()->region['title_'.lang()] : '') : ''}}</option>--}}
                                                    @php
                                                        $selectedRegionId = old('region_id');
                                                    @endphp
                                                    @foreach(mainCountry()->regions as $region)
                                                        <option value="{{ $region->id }}" {{ $region->id == $selectedRegionId ? 'selected' : '' }}>
                                                            {{ $region['title_'.lang()] }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.block') <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="block" min="1" value="{{ old('block', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.road') <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="road" min="1" value="{{ old('road', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.building_no') <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="building_no" min="1" value="{{ old('building_no', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.floor_no')  <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="floor_no" min="1" value="{{ old('floor_no', '') }}"  oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')" required>
                                            </div>
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.apartment') <span class="text-danger">*</span>
                                                </label>
                                                <input type="number" class="form-control rounded-0" name="apartment" min="1" value="{{ old('apartment', '') }}" oninput="this.value = this.value < 1 ? 1 : this.value" required>
                                            </div>
{{--                                            <div class="col-sm-6 col-md-6 mb-3">--}}
{{--                                                <label for="" class="text-secondary">@lang('trans.apartmentType')--}}
{{--                                                </label>--}}
{{--                                                <input type="text" class="form-control rounded-0" name="apartmentType" value="{{ old('apartmentType', '') }}">--}}
{{--                                            </div>--}}
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="" class="text-secondary">@lang('trans.additional_directions')
                                                </label>
                                                <input type="text" class="form-control rounded-0" name="additional_directions" value="{{ old('additional_directions', '') }}">
                                            </div>
                                        </div>
                                    </div>
                                    @endif



                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                </div>

                <div class="col-md-6">
                    <div class="mt-5 mt-lg-0">
                        <div class="card border shadow-none" style="text-align: inherit">
                            <div class="card-header bg-transparent border-bottom py-3 px-4">
                                <h5 class="font-size-16 mb-0">@lang('trans.paymentMethod')</h5>
                            </div>
                            <div class="card-body p-4 pt-2">
                                <div class="table-responsive">
                                    <table class="table mb-0 ">
                                        <tbody>
                                            @foreach (Payments() as $Payment)
                                            <tr>
                                                <td class="align-items-center d-flex">
                                                     <label for="payment-{{ $Payment->id }}"><img src="{{ asset($Payment->image) }}" alt="payment" style="max-width: 50px;margin: 0px 5px; {{ $Payment->title_en == 'Debit Card' || $Payment->title_en == 'Benefit Pay' ? 'height: 40px;' : '' }}"></label>

                                                    <div class="form-check form-check-inline d-flex gap-2">
                                                        <input class="form-check-input {{ lang() == 'en' ? '' : 'me-auto' }}"  type="radio" name="payment_id" id="payment-{{ $Payment->id }}" value="{{ $Payment->id }}" @checked($loop->first)>
                                                        <label class="form-check-label" for="payment-{{ $Payment->id }}">{{ $Payment->title() }}</label>
                                                    </div>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mt-5 mt-lg-0">
                        <div class="card border shadow-none" style="text-align: inherit">
                            <div class="card-header bg-transparent border-bottom py-3 px-4">
                                <h5 class="font-size-16 mb-0">@lang('trans.order') @lang('trans.Summary')</h5>
                            </div>
                            <div class="card-body p-4 pt-2">
                                <div class="table-responsive">
                                    <table class="table mb-0">
                                        <tbody>
                                            <tr>
                                                <td><b>@lang('trans.sub_total') :</b></td>
                                                <td class=""> <span id="sub_total">1</span>  <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span></td>
                                            </tr>
                                            <tr>
                                                <td><b>@lang('trans.Discount') : </b></td>
                                                <td class="">-  <span id="discount">1</span>  <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span></td>
                                            </tr>
                                            <tr>
                                                <td><b>@lang('trans.vat') ( {{ setting('VAT') }}% ) : </b> </td>
                                                <td class=""> <span id="vat">1</span> <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span></td>
                                            </tr>
                                            @if (old('delivery_id',request('delivery_id')) == 1)
                                                <tr>
                                                    <td><b>@lang('trans.delivery_charge') :</b></td>
                                                    <td class=""> <span id="delivery_charge">1</span>  <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span></td>
                                                </tr>
                                            @endif
                                            <tr class="bg-light">
                                                <th>@lang('trans.netTotal') :</th>
                                                <td class="">
                                                    <span class="fw-bold">
                                                         <span id="netTotal">1</span> <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span>
                                                    </span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="mb-3 w-100 d-flex justify-content-center">
                        <button type="submit"  href="paymentmethods.html" class="btn btn-dark px-4 btn m-auto border border-1 border-dark rounded-3 gap-2 my-2 py-2 ">@lang('trans.confirmOrder')</button>
                    </div>
                </div>
            </div>

        </div>
    </div>

</form>
@endsection

@push('css')
    <style>

        .line {
            position: relative;
            font-size: 23px;
            z-index: 1;
            overflow: hidden;
            text-align: center;
        }
        .line:before, .line:after {
            position: absolute;
            top: 51%;
            overflow: hidden;
            width: 48%;
            height: 1px;
            content: '\a0';
            background-color: black; /* change color if needed*/
            margin-left: 2%;
        }
        .line:before {
            margin-left: -50%;
            text-align: right;
        }

        /*
        inspired by this pen: https://codepen.io/biko8/pen/meREyr
        */
        .bg-ccc {
            background-color: #f1f3f7;
        }

        .avatar-lg {
            height: auto;
            /*width: 5rem;*/
            max-height: 5rem
        }

        .font-size-18 {
            font-size: 18px !important;
        }

        .text-truncate {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        a {
            text-decoration: none !important;
        }

        .w-xl {
            min-width: 160px;
        }

        .card {
            margin-bottom: 24px;
            -webkit-box-shadow: 0 2px 3px #e4e8f0;
            box-shadow: 0 2px 3px #e4e8f0;
        }

        .card {
            position: relative;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid #eff0f2;
            border-radius: 1rem;
        }

        .minus,
        .plus {
            width: 20px;
            background: #f2f2f2;
            border-radius: 4px;
            border: 1px solid #ddd;
            display: inline-block;
            vertical-align: middle;
            text-align: center;
            cursor: pointer;
        }

        .number input {
            height: 34px;
            width: 100px;
            text-align: center;
            font-size: 26px;
            border: 1px solid #ddd;
            border-radius: 4px;
            display: inline-block;
            vertical-align: middle;
            max-width: 51px;
        }
    </style>
@endpush

@php($pieces_num = 0)
@php($sub_total = 0)
@php($exclusive_sub_total = 0)
@php($discount = 0)

@foreach ($Cart as $CartItem)
    @php($pieces_num += $CartItem->quantity)
    @php($Product = $Products->where('id',$CartItem->product_id)->first())
    @php($ProPrice = format_number($Product->CalcPrice() + $CartItem->additions?->sum('price')) )
    @php($sub_total += $CartItem->quantity * $ProPrice)
    @php($exclusive_sub_total += $CartItem->Product->VAT == 'exclusive' ? $ProPrice : 0)
    @php($discount += format_number($Product->Price() + $CartItem->additions?->sum('price')) -  $ProPrice )
@endforeach

@push('js')
    <script>

        function formatNumber(number) {
            // Apply ceiling to the number and return it as a number with 1 decimal place
            return parseFloat((Math.ceil(number * 10) / 10).toFixed(1));
        }

        {{--$(document).ready(function (){--}}
        {{--    console.log({{ Country()->title_en }});--}}
        {{--});--}}

        $(document).on("change", "#region_id", function () {
            $("input[name='address_id']").prop('checked', false);
            calc();
        });
        function calc(){
            vat = 0;
            delivery_charge = 2;

            pieces_num = {{ $pieces_num }};
            {{--decimals = {{ Country()->decimals }};--}}
            decimals = 1;
            sub_total = {{ $sub_total }};
            exclusive_sub_total = {{ $exclusive_sub_total }};
            discount = {{ $discount }};
            vat_percentage = {{ setting('VAT') }};

            if(discount <= 0){
                $('#discount').parent().parent().addClass('d-none');
            }else{
                $('#discount').parent().parent().removeClass('d-none');
            }


            // Array of European country codes
            const europeCountries = [
                'AL', 'AD', 'AM', 'AT', 'AZ', 'BY', 'BE', 'BA', 'BG', 'HR', 'CY', 'CZ', 'DK',
                'EE', 'FI', 'FR', 'GE', 'DE', 'GR', 'HU', 'IS', 'IE', 'IT', 'KZ', 'XK', 'LV',
                'LI', 'LT', 'LU', 'MT', 'MD', 'MC', 'ME', 'NL', 'MK', 'NO', 'PL', 'PT', 'RO',
                'RU', 'SM', 'RS', 'SK', 'SI', 'ES', 'SE', 'CH', 'TR', 'UA', 'GB', 'VA'
            ];

            // Conversion rate from USD to BHD
            const usdToBhdRate = 0.38;

            const onePeaceEuropeAndusa = 30 * 0.38; //  * 0.38  Conversion rate from USD to BHD
            const twoPeacesEuropeAndusa = 38 * 0.38; //  * 0.38  Conversion rate from USD to BHD

            const onePeaceCanada = 36 * 0.38; //  * 0.38  Conversion rate from USD to BHD
            const twoPeacesCanada = 46 * 0.38; //  * 0.38  Conversion rate from USD to BHD

            const onePeaceOtherCountries = 36 * 0.38;
            const twoPeaceOtherCountries = 46 * 0.38;


            console.log($('#country_code').val());

            var countryCode = $('#country_code').val();

            if (typeof countryCode === 'undefined' || countryCode === null || countryCode === '') {
                countryCode = 'BH';
            }

            console.log(countryCode);

            if (countryCode == 'BH') {
                delivery_charge = 2 * {{ country()->currancy_value }};
            } else if (['SA', 'OM', 'AE', 'QA', 'KW'].includes(countryCode)) {
                console.log('arab');
                if (pieces_num == 1) {
                    delivery_charge = 5 * {{ country()->currancy_value }};
                } else if (pieces_num == 2) {
                    delivery_charge = 8 * {{ country()->currancy_value }};
                } else if (pieces_num == 3) {
                    delivery_charge = 12 * {{ country()->currancy_value }};
                } else if (pieces_num == 4) {
                    delivery_charge = 15 * {{ country()->currancy_value }};
                } else {
                    window.location.href = "https://wa.me/{{ setting('whatsapp') }}";
                }
            } else if (['UK', 'US'].includes(countryCode) || europeCountries.includes(countryCode)) {
                // UK, USA, and all European countries
                if (pieces_num == 1) {
                    delivery_charge = onePeaceEuropeAndusa * {{ country()->currancy_value }} ;
                } else if (pieces_num == 2) {
                    delivery_charge = twoPeacesEuropeAndusa * {{ country()->currancy_value }} ;
                } else {
                    window.location.href = "https://wa.me/{{ setting('whatsapp') }}";
                }
            } else if (countryCode == 'CA') {
                console.log('canada');
                if (pieces_num == 1) {
                    delivery_charge = onePeaceCanada * {{ country()->currancy_value }} ;
                } else if (pieces_num == 2) {
                    delivery_charge = twoPeacesCanada * {{ country()->currancy_value }} ;
                } else {
                    window.location.href = "https://wa.me/{{ setting('whatsapp') }}";
                }
            } else {
                console.log('else');
                if (pieces_num == 1) {
                    delivery_charge = onePeaceOtherCountries * {{ country()->currancy_value }};
                } else if (pieces_num == 2) {
                    delivery_charge = twoPeaceOtherCountries * {{ country()->currancy_value }};
                } else {
                    window.location.href = "https://wa.me/{{ setting('whatsapp') }}";
                }
            }

            console.log(delivery_charge);


            vat = exclusive_sub_total/100*vat_percentage;
            netTotal = sub_total + vat + delivery_charge;
            sub_total += discount;
            $('#sub_total').html(formatNumber(sub_total));
            $('#discount').html(formatNumber(discount));
            $('#vat').html(formatNumber(vat));
            $('#delivery_charge').html(formatNumber(delivery_charge));
            $('#netTotal').html(formatNumber(netTotal));
            $('#delivery_cost').val(formatNumber(delivery_charge));
        }
        calc();


    </script>
@endpush


@push('css')
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet-fullscreen/dist/leaflet.fullscreen.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet-locatecontrol/0.72.0/L.Control.Locate.min.css" />
    <style>
        #map {
            height: 100%;
            width: 100%;
        }
        .leaflet-control {
            z-index: 400;
        }

        .leaflet-control-geosearch {
            position: absolute;
            top: 17px;
            left: 70px;
            z-index: 999;
            background-color: #fff;
            padding: 5px;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.3);
            width: max-content;
        }
        .leaflet-control-geosearch input {
            width: 200px;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-right: 5px;
        }
        .leaflet-control-geosearch button {
            background: #3388ff;
            border: none;
            color: white;
            padding: 8px 12px;
            cursor: pointer;
            border-radius: 4px;
        }
    </style>
@endpush


@push('js')

    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script src="https://unpkg.com/leaflet-fullscreen/dist/Leaflet.fullscreen.min.js"></script>
    <script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>


    <!-- Select2 JS -->
    <!-- jQuery (must be loaded first) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Select2 JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Select2 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
    <script>
        $(".select2").select2({
            placeholder: "Select a programming language",
            allowClear: true
        });
        $("#multiple").select2({
            placeholder: "Select a programming language",
            allowClear: true
        });
    </script>
    <!-- Select2 JS -->

    <!-- Removed leaflet-locatecontrol script -->
    <script>
        var map = L.map('map', {
            fullscreenControl: true
        }).setView([{{ $lat }}, {{ $long }}], 14);

        // Add OpenStreetMap tile layer
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19
        }).addTo(map);

        var locationMarker, locationCircle;

        function updateLatLngInputs(latlng) {
            document.getElementById('lat').value = latlng.lat;
            document.getElementById('lng').value = latlng.lng;
        }

        // Handle location found
        function onLocationFound(e) {
            var radius = e.accuracy / 2;
            if (locationMarker) {
                map.removeLayer(locationMarker);
            }
            if (locationCircle) {
                map.removeLayer(locationCircle);
            }
            locationMarker = L.marker(e.latlng).addTo(map).bindPopup("Current Location").openPopup();
            locationCircle = L.circle(e.latlng, radius).addTo(map);
            updateLatLngInputs(e.latlng);
            getCountryCode(e.latlng);
        }

        // Handle location error without showing alert
        function onLocationError(e) {
            console.log('Location error:', e.message);
        }

        // Remove Locate Control initialization
        // var lc = L.control.locate({
        //     position: 'topleft',
        //     strings: {
        //         title: "Show me where I am!"
        //     },
        //     locateOptions: {
        //         maxZoom: 16,
        //         watch: false,
        //         setView: false
        //     },
        //     watch: false,
        //     setView: false,
        //     drawCircle: false,
        //     drawMarker: true
        // }).addTo(map);

        // Handle map click
        map.on('click', function(e) {
            if (locationMarker) {
                map.removeLayer(locationMarker);
                locationMarker = null;
            }
            if (locationCircle) {
                map.removeLayer(locationCircle);
                locationCircle = null;
            }
            locationMarker = L.marker(e.latlng).addTo(map);
            updateLatLngInputs(e.latlng);
            getCountryCode(e.latlng);
        });

        // Reverse geocoding
        function getCountryCode(latlng) {
            $("#address_id option:selected").attr("selected", false);
            $("#address_id option:selected").prop("selected", false);

            var geocoder = L.Control.Geocoder.nominatim();
            geocoder.reverse(latlng, map.options.crs.scale(map.getZoom()), function(results) {
                var r = results[0];
                if (r) {
                    var countryCode = r.properties.address.country_code.toUpperCase();
                    $('#country_code').val(countryCode);
                    $('#lat').val(latlng.lat);
                    $('#long').val(latlng.lng);
                    $('#additional_directions').val(r.name);
                    calc();
                }
            });
        }

        // setMapLocation
        function setMapLocation(latitude, longitude) {
            var latLng = L.latLng(latitude, longitude);
            map.setView(latLng, 13); // Set the view to the specified coordinates with zoom level 13

            // Clear existing markers (if any) and add a new marker at the specified coordinates
            if (locationMarker) {
                map.removeLayer(locationMarker);
            }
            locationMarker = L.marker(latLng).addTo(map);
        }

        // Handle search button click
        document.getElementById('search-button').addEventListener('click', function() {
            const query = document.getElementById('search-input').value;
            const geocoder = L.Control.Geocoder.nominatim();
            geocoder.geocode(query, function(results) {
                if (results.length > 0) {
                    const result = results[0];
                    const latlng = result.center;
                    if (locationMarker) {
                        map.removeLayer(locationMarker);
                    }
                    if (locationCircle) {
                        map.removeLayer(locationCircle);
                    }
                    locationMarker = L.marker(latlng).addTo(map);
                    map.setView(latlng, 13);
                    updateLatLngInputs(latlng);
                    getCountryCode(latlng);
                    console.log(`Search Result: ${result.name}, Lat: ${latlng.lat}, Lng: ${latlng.lng}`);
                } else {
                    console.log('Location not found');
                }
            });
        });



        @if($Addresses->count())
        $(document).on("change", "#address_id", function () {
            address_id = $( "#address_id option:selected" ).val();
            if(address_id > 0){
                $.map(@json($Addresses), function(Address, key) {
                    if(Address['id'] == address_id){
                        setMapLocation(Address['lat'],Address['long']);
                        $('#country_code').val(Address['country_code']);
                        $('#lat').val(Address['lat']);
                        $('#long').val(Address['long']);
                        $('#additional_directions').val(Address['additional_directions']);

                        calc();
                    }
                });
            }else{
                onLocationFound();
            }
            calc();
        });
        @endif

    </script>


    <!-- change country -->
    <script>
        $(document).ready(function() {
            // Function to toggle between the two address sections
            function toggleAddressSections(countryValue) {
                if (countryValue == 1) {
                    $('#otherCountries').hide(); // Hide otherCountries section
                    $('#bahrain').show(); // Show bahrain section
                    // Add 'required' attribute to inputs in bahrain section
                    $('#bahrain').find('input, select').prop('required', true);
                    $('#bahrain').find('input[name="additional_directions"],input[name="apartment"]').prop('required', false);
                    // Remove 'required' attribute from inputs in otherCountries section
                    $('#otherCountries').find('input, select').prop('required', false).val('');

                    // Fetch regions for country 1
                    fetchRegionsForCountry(countryValue);
                }
                else {
                    $('#otherCountries').show(); // Show otherCountries section
                    $('#bahrain').hide(); // Hide bahrain section
                    // Add 'required' attribute to inputs in otherCountries section
                    $('#otherCountries').find('input, select').not('[name="state"], [name="address2"]').prop('required', true);
                    // Remove 'required' attribute from inputs in bahrain section
                    $('#bahrain').find('input, select').prop('required', false).val('');
                }
            }



            // Event listener to detect changes in the selected country
            $('#country_id').change(function() {

                // Call the function initially to set the correct section based on the selected country
                // toggleAddressSections($('#country_id').val());

                var selectedCountryValue = $(this).val();
                // $('#country_code').val(selectedCountryValue);
                // console.log(selectedCountryValue);
                // calc();
                // toggleAddressSections(selectedCountryValue);

                var selectedOption = $(this).find('option:selected');
                var selectedCountryCode = selectedOption.data('code');
                $('#country_code').val(selectedCountryCode);
                console.log(selectedCountryCode);

                calc();
                toggleAddressSections($(this).val());
            });


            // Function to fetch regions for country 1 using AJAX
            function fetchRegionsForCountry(countryValue) {
                $.ajax({
                    url: '{{ route("client.fetchRegionsForCountry") }}', // Route for fetching regions
                    type: 'GET',
                    data: { country_id: countryValue }, // Pass the country_id as data
                    success: function(response) {
                        // Populate the select box with regions
                        var $regionSelect = $('#region_id');
                        var selectedRegionId = '{{ $selectedRegionId }}'; // Get the selected region ID from PHP variable
                        $regionSelect.empty(); // Clear existing options
                        $regionSelect.append('<option value="">{{ __('trans.select_region') }}</option>'); // Add default option
                        $.each(response.regions, function(index, region) {
                            var isSelected = region.id == selectedRegionId ? 'selected' : '';
                            $regionSelect.append('<option value="' + region.id + '" ' + isSelected + '>' + region.title + '</option>');
                        });
                    }
                });
            }
        });
    </script>


    <!-- make validation when add new address -->
    <script>
        $(document).ready(function() {
            $('#addAddress').click(function() {
                // Set the width of .select2-container to 100%
                $('.select2-container').css('width', '100%');

                // $('#address_id').prop('required', false).val('');
                var firstOptionValue = $('#address_id option:first').val();
                $('#address_id').prop('required', false).val(firstOptionValue).trigger('change');


                $('#bahrain').show(); // Show the #bahrain section
                $('#bahrain').find('input, select').prop('required', true);
                $('#bahrain').find('input[name="additional_directions"],input[name="apartment"]').prop('required', false);                $('#otherCountries').hide(); // Hide the #otherCountries section
                $('#country').show();

                $('#country_code').val('BH');
                calc();

            });
        });

    </script>

    <script>
        $(document).ready(function() {
            $('#address_id').change(function() {
                $('#country').hide();
                $('#bahrain').hide();
                $('#otherCountries').hide();
                $('#bahrain').find('input, select').prop('required', false).val('');
                $('#otherCountries').find('input, select').prop('required', false).val('');

                var selectedOption = $('#address_id').find(':selected');
                var countryCode = selectedOption.data('code');
                console.log(countryCode); // Prints the data-code in the browser console
                $('#country_code').val(countryCode);
                calc();
            });
        });

    </script>

    <!-- This code to make all fields empty when click on back btn in browser -->
    <script>
        window.addEventListener('pageshow', function(event) {
            if (event.persisted || (window.performance && window.performance.navigation.type === 2)) {
                // Clear all input fields
                document.querySelectorAll('input').forEach(input => {
                    input.value = '';
                });

                // Clear textareas and selects as well if needed
                document.querySelectorAll('textarea').forEach(textarea => {
                    textarea.value = '';
                });

                document.querySelectorAll('select').forEach(select => {
                    select.selectedIndex = 0;
                });
            }
        });
    </script>

@endpush