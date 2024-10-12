@extends('Client.layouts.layout')

@push('css')
    <!-- Select2 CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
@endpush

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
                    </a>
                    @lang('trans.home')
                </li>
                <li class="breadcrumb-item fw-semibold" aria-current="page">
                    @lang('trans.address')
                </li>
            </ol>
        </nav>
    </div>
</div>


<div class="gray-bage">
    <div class="container ">
        <div class="row ">
            <h3 class="text-uppercase">@lang('trans.addAddress')</h3>
        </div>
    </div>
</div>
<div class="container my-5">
    <div class="row  justify-content-center">
{{--
        <div class="row  position-relative" style="height: 400px;">
            <div id="map"></div>
        </div>
--}}



        <form class="w-50" action="{{ route('client.address.store') }}" method="POST">
            @csrf
            {{--
            <input type="hidden" name="lat" id="lat" value="{{ $lat }}">
            <input type="hidden" name="long" id="long" value="{{ $long }}">

            <div class="mb-3 my-5">
                <label for="additional_directions" class="form-label">@lang('trans.additional_directions')</label>
                <textarea class="form-control rounded-3" id="additional_directions" name="additional_directions" rows="5" style="resize: none;"></textarea>
            </div>
            --}}

            <div class="col-sm-12 mb-3">
                <label for="" class="text-secondary">@lang('trans.country')<span class="red-label">*</span>
                </label>
                <select class="rounded-0 form-select select2" name="country_id" id="country_id" required oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                    {{--                                  <option value="">@lang('trans.select_country')</option>--}}
                    @foreach(allCountries() as $country)
                        <option value="{{$country->id}}" data-code="{{$country->country_code}}" {{ old('country_id') }}>{{ $country['title_'.lang()] }}</option>
                    @endforeach
                </select>
{{--                <input type="hidden" name="country_id" value="{{Country()->id}}">--}}
            </div>
            <div id="otherCountries" class="row" style="{{addressShipping()?->country_id !== '1' ? 'display:block' : 'display:none' }}">
                <div class="col-sm-12 mb-3">
                    <label for="" class="text-secondary">@lang('trans.city')   <span class="red-label">*</span>
                    </label>
                    <input type="text" class="form-control rounded-0" name="city" id="" value="{{ old('city', '') }}" required oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                </div>
                <div class="col-sm-12 mb-3">
                    <label for="" class="text-secondary">@lang('trans.state')  (@lang('trans.optional'))
                    </label>
                    <input type="text" class="form-control rounded-0" name="state" id="" value="{{ old('state', '') }}">
                </div>
                <div class="col-sm-12 mb-3">
                    <label for="" class="text-secondary">@lang('trans.street_address') <span class="red-label">*</span>
                    </label>
                    <input type="text" class="form-control rounded-0 mb-3" name="address1" id="" placeholder="@lang('trans.address1')" value="{{old('address1')}}" required oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                    <input type="text" class="form-control rounded-0" name="address2" id="" placeholder="@lang('trans.address2')" value="{{old('address1')}}">
                </div>
            </div>

            <div id="bahrain"  style="{{addressShipping()?->country_id == '1' ? 'display:none' : 'display:block' }}">
                <div class="row">
                    <div class="col-sm-12 col-md-6 mb-3">
                        <label for="" class="text-secondary">@lang('trans.region')
                        </label>
                        <select class="rounded-0 form-select" name="region_id" id="region_id" required oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                            <option value="">@lang('trans.select_region')</option>
                            {{--                                                                                              <option value="{{ old('region_id') }}" selected>{{addressShipping() ? (addressShipping()->region_id ? addressShipping()->region['title_'.lang()] : '') : ''}}</option>--}}
                            @php
                                $selectedRegionId = old('region_id');
                            @endphp
                            @foreach(Country()->regions as $region)
                                <option value="{{ $region->id }}" {{ $region->id == $selectedRegionId ? 'selected' : '' }}>
                                    {{ $region['title_'.lang()] }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-sm-6 col-md-6 mb-3">
                        <label for="" class="text-secondary">@lang('trans.block')
                        </label>
                        <input type="number" class="form-control rounded-0" name="block" min="1" value="{{ old('block', '') }}" required oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                    </div>
                    <div class="col-sm-6 col-md-6 mb-3">
                        <label for="" class="text-secondary">@lang('trans.road')
                        </label>
                        <input type="number" class="form-control rounded-0" name="road" min="1" value="{{ old('road', '') }}" required oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                    </div>
                    <div class="col-sm-6 col-md-6 mb-3">
                        <label for="" class="text-secondary">@lang('trans.building_no')
                        </label>
                        <input type="number" class="form-control rounded-0" name="building_no" min="1" value="{{ old('building_no', '') }}" required oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                    </div>
                    <div class="col-sm-6 col-md-6 mb-3">
                        <label for="" class="text-secondary">@lang('trans.floor_no')
                        </label>
                        <input type="number" class="form-control rounded-0" name="floor_no" min="1" value="{{ old('floor_no', '') }}" required oninput="this.value = this.value < 1 ? 1 : this.value" oninvalid="this.setCustomValidity(@lang('trans.this_field_required'))" title="@lang('trans.this_field_required')">
                    </div>
                    <div class="col-sm-6 col-md-6 mb-3">
                        <label for="" class="text-secondary">@lang('trans.apartment')
                        </label>
                        <input type="number" class="form-control rounded-0" name="apartment" min="1" value="{{ old('apartment', '') }}" oninput="this.value = this.value < 1 ? 1 : this.value">
                    </div>
                    <div class="col-sm-6 col-md-6 mb-3">
                        <label for="" class="text-secondary">@lang('trans.apartmentType')
                        </label>
                        <input type="text" class="form-control rounded-0" name="apartmentType" value="{{ old('apartmentType', '') }}">
                    </div>
                    <div class="col-sm-6 col-md-6 mb-3">
                        <label for="" class="text-secondary">@lang('trans.additional_directions')
                        </label>
                        <input type="text" class="form-control rounded-0" name="additional_directions" value="{{ old('additional_directions', '') }}">
                    </div>
                </div>
            </div>

            <div class="mb-3 w-100 d-flex justify-content-center">
                <button type="submit" class="btn btn-dark px-4 btn m-auto border border-1 border-dark rounded-3 gap-2 my-2 w-50 py-2">
                    @lang('trans.Submit')
                </button>
            </div>
        </form>
    </div>
</div>



@endsection

@push('css')
<style>
    #map .gm-style-iw-d {
        color: #000;
    }

    #map input[type=text] {
        background-color: #fff;
        border: 0;
        border-radius: 2px;
        box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
        margin: 10px;
        padding: 0 0.5em;
        font: 400 18px Roboto, Arial, sans-serif;
        overflow: hidden;
        line-height: 40px;
        margin-right: 0;
        min-width: 25%;
    }

    #map input[type=button] {
        background-color: #fff;
        border: 0;
        border-radius: 2px;
        box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
        margin: 10px;
        padding: 0 0.5em;
        font: 400 18px Roboto, Arial, sans-serif;
        overflow: hidden;
        height: 40px;
        cursor: pointer;
        margin-left: 5px;
    }

    #map input[type=button]:hover {
        background: rgb(235, 235, 235);
    }

    #map input[type=button].button-primary {
        background-color: #1a73e8;
    }

    #map input[type=button].button-primary:hover {
        background-color: #1765cc;
    }

    #map input[type=button].button-secondary {
        background-color: white;
        color: #1a73e8;
    }

    #map input[type=button].button-secondary:hover {
        background-color: #d2e3fc;
    }

</style>
@endpush


@push('js')


<script>
    let map;
    let marker;
    let geocoder;
    let response;


    function initMap() {
        var haightAshbury = {
            lat: {{ $lat }}
            , lng: {{ $long }}
        };
        map = new google.maps.Map(document.getElementById("map"), {
            zoom: 8
            , center: haightAshbury
            , mapTypeControl: false
            , draggableCursor: 'default',

        });
        geocoder = new google.maps.Geocoder();

        const inputText = document.createElement("input");

        inputText.type = "text";
        inputText.placeholder = "{{ __('trans.pick_your_location') }}";

        const submitButton = document.createElement("input");

        submitButton.type = "button";
        submitButton.value = "{{ __('trans.search') }}";
        submitButton.classList.add("button", "button-primary");


        response = document.createElement("pre");
        response.id = "response";
        response.innerText = "";

        map.controls[google.maps.ControlPosition.TOP_LEFT].push(inputText);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(submitButton);
        marker = new google.maps.Marker({
            map
            , animation: google.maps.Animation.DROP
            , position: haightAshbury
        });
        addYourLocationButton(map, marker);
        map.addListener('click', function(event) {
            geocode({
                location: event.latLng
            });
            var latitude = event.latLng.lat();
            var longitude = event.latLng.lng();
        });
        submitButton.addEventListener("click", () =>
            geocode({
                address: inputText.value
            })
        );
        marker.setMap(null);
    }

    function addYourLocationButton(map, marker) {
        var controlDiv = document.createElement('div');
        var firstChild = document.createElement('button');
        firstChild.style.backgroundColor = '#fff';
        firstChild.style.border = 'none';
        firstChild.style.outline = 'none';
        firstChild.style.width = '40px';
        firstChild.style.height = '40px';
        firstChild.style.borderRadius = '2px';
        firstChild.style.boxShadow = '0 1px 4px rgba(0,0,0,0.3)';
        firstChild.style.cursor = 'pointer';
        firstChild.style.marginRight = '10px';
        firstChild.style.padding = '0px';
        firstChild.title = 'Your Location';
        controlDiv.appendChild(firstChild);

        var secondChild = document.createElement('div');
        secondChild.style.margin = '10px';
        secondChild.style.width = '18px';
        secondChild.style.height = '18px';
        secondChild.style.backgroundImage = 'url(https://maps.gstatic.com/tactile/mylocation/mylocation-sprite-1x.png)';
        secondChild.style.backgroundSize = '180px 18px';
        secondChild.style.backgroundPosition = '0px 0px';
        secondChild.style.backgroundRepeat = 'no-repeat';
        secondChild.id = 'you_location_img';
        firstChild.appendChild(secondChild);

        google.maps.event.addListener(map, 'dragend', function() {
            $('#you_location_img').css('background-position', '0px 0px');
        });

        firstChild.addEventListener('click', function() {
            var imgX = '0';
            var animationInterval = setInterval(function() {
                if (imgX == '-18') imgX = '0';
                else imgX = '-18';
                $('#you_location_img').css('background-position', imgX + 'px 0px');
            }, 500);
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
                    marker.setPosition(latlng);
                    map.setCenter(latlng);
                    clearInterval(animationInterval);
                    $('#you_location_img').css('background-position', '-144px 0px');
                    if ("geolocation" in navigator) {
                        navigator.geolocation.getCurrentPosition(function(position) {
                            var currentLatitude = position.coords.latitude;
                            var currentLongitude = position.coords.longitude;
                            var currentLocation = {
                                lat: currentLatitude
                                , lng: currentLongitude
                            };
                            geocode({
                                location: latlng
                            });
                        });
                    }
                });
            } else {
                clearInterval(animationInterval);
                $('#you_location_img').css('background-position', '0px 0px');
            }

        });

        controlDiv.index = 1;
        map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(controlDiv);
    }

    window.initMap = initMap;

    function geocode(request) {
        marker.setMap(null);
        geocoder.geocode(request).then((result) => {
            const {
                results
            } = result;
            map.setCenter(results[0].geometry.location);
            marker.setPosition(results[0].geometry.location);
            marker.setMap(map);
            response.innerText = JSON.stringify(result, null, 2);
            document.getElementById("additional_directions").value = results[0]['formatted_address'];
            document.getElementById("lat").value = results[0].geometry.location.lat();
            document.getElementById("long").value = results[0].geometry.location.lng();
            return results;
        });
    }

</script>
<script src="https://maps.googleapis.com/maps/api/js?key={{ env('MAP_KEY') }}&callback=initMap&language={{ lang() }}"></script>

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
                $('#bahrain').find('input[name="additional_directions"],input[name="apartment"],input[name="apartmentType"]').prop('required', false);
                // Remove 'required' attribute from inputs in otherCountries section
                $('#otherCountries').find('input, select').prop('required', false).val('');
                $('#bahrain').find('select').prop('required', true).each(function() {
                    // Set the first option as selected
                    $(this).val($(this).find('option:first').val());
                });

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

        // Call the function initially to set the correct section based on the selected country
        toggleAddressSections($('#country_id').val());

        // Event listener to detect changes in the selected country
        $('#country_id').change(function() {



            var selectedCountryValue = $(this).val();
            // $('#country_code').val(selectedCountryValue);
            // console.log(selectedCountryValue);
            // calc();
            // toggleAddressSections(selectedCountryValue);

            var selectedOption = $(this).find('option:selected');
            var selectedCountryCode = selectedOption.data('code');
            $('#country_code').val(selectedCountryCode);
            console.log(selectedCountryCode);

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
@endpush


