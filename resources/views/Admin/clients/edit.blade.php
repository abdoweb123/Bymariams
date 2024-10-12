@extends('Admin.layout')
@section('pagetitle', __('trans.clients'))

@section('content')
<form action="{{ route('admin.clients.update',$Client) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')

    <div class="text-center">
        <img src="{{ asset($Client->image ?? setting('logo')) }}" class="rounded mx-auto text-center" style="border-radius: 50% !important" id="image" width="200px" height="200px">
    </div>
    <div class="row">
        <div class="col-12"></div>
        <div class="col-md-6 ">
            <label for="name">{{ __('trans.name') }}</label>
            <input value="{{ $Client->name }}" type="text" name="name" id="name" parsley-trigger="change" required value="" class="form-control">
        </div>
        <div class="col-md-6 col-sm-12">
            <label for="email">{{ __('trans.email') }}</label>
            <input value="{{ $Client->email }}" type="email" name="email" parsley-trigger="change" value="" required class="form-control">
        </div>
        <div class="col-md-6 col-sm-12">
            <label for="phone">{{ __('trans.phone') }}</label>
            <input type="hidden" name="country_id" value="{{ $Client->Country->id }}" id="country_id">
            <input class="form-control @error('phone_code') is-invalid @enderror @error('country_code')is-invalid @enderror @error('phone')is-invalid @enderror" type="tel" name="phone" id="phone_number" placeholder="{{ __('trans.Phone') }}" value="{{ old('phone', $Client->phone) }}" maxlength="{{ $Client->Country->length }}" required>
        </div>
        <div class="col-md-6 col-sm-12">
            <label for="password">{{ __('trans.password') }}</label>
            <input type="password" name="password" id="password" parsley-trigger="change" class="form-control" data-parsley-id="10">
        </div>
        <div class="col-md-6 col-sm-12">
            <label for="password_confirmation">{{ __('trans.confirmPassword') }}</label>
            <input type="password" name="password_confirmation" id="password_confirmation" parsley-trigger="change" class="form-control" data-parsley-id="10">
        </div>

        <div class="form-group col-md-6">
            <label for="file">@lang('trans.image')</label>
            <label for="file" class="file-input btn btn-block btn-secondary btn-file w-100">
                @lang("trans.Browse")
                <input accept="image/*" type="file" type="file" name="image" id="file" onchange="document.getElementById('image').src = window.URL.createObjectURL(this.files[0])">
            </label>
        </div>
        <div class="clearfix"></div>
        <div class="col-12 my-4">
            <div class="button-group">
                <button type="submit" class="main-btn btn-hover w-100 text-center">
                    {{ __('trans.Submit') }}
                </button>
            </div>
        </div>
    </div>
</form>
@endsection

@push('css')
    <link rel="stylesheet" href="https://unpkg.com/intl-tel-input@17.0.3/build/css/intlTelInput.css">
@endpush
@push('js')
    <script src="https://unpkg.com/intl-tel-input@17.0.3/build/js/intlTelInput.js"></script>
    <script>
        $(document).ready(function () {
            // Initialize intlTelInput for login phone
            var itiLogin = window.intlTelInput(document.querySelector("#phone_number"), {
                separateDialCode: true,
                onlyCountries: @json(allCountries()->pluck('country_code')->toArray()),
                utilsScript: "https://unpkg.com/intl-tel-input@17.0.3/build/js/utils.js",
                preferredCountries: ["{{ $Client->Country->country_code }}"],
                formatOnDisplay: false,  // Disable automatic formatting
            });

            // Store the itiLogin instance globally
            window.itiLogin = itiLogin;

            // Clear the initial value of the phone number field
            $('#phone_number').val('');

            // Optionally, set the country code based on the country_id
            const initialCountryCode = "{{ $Client->Country->country_code }}";
            if (initialCountryCode) {
                itiLogin.setCountry(initialCountryCode);
            }

            // Optionally, if you have a phone number to set after initialization:
            const initialPhoneNumber = "{{ old('phone', $Client->phone) }}";
            if (initialPhoneNumber) {
                itiLogin.setNumber(initialPhoneNumber); // Set the number after initialization
            }

            // Listen for country change event on the login phone input
            document.querySelector("#phone_number").addEventListener("countrychange", function() {
                // Get the dial code of the selected country
                let dialCode = itiLogin.getSelectedCountryData().dialCode;

                // Initialize variables for country length and ID
                let countryLength = 0;
                let countryId = null;
                let placeholder = ""; // Initialize placeholder as an empty string
                // Clear the initial value of the phone number field
                $('#phone_number').val('');
                // Loop through all countries to find the matching one by dial code
                $.each(@json(allCountries()), function (key, element) {
                    if (element.phone_code.includes(dialCode)) {
                        countryLength = element.length;
                        countryId = element.id;
                        placeholder = '*'.repeat(countryLength);
                        return false;  // Break out of the loop once the match is found
                    }
                });

                console.log(countryLength);
                var login_phone = $('#phone_number');
                login_phone.attr("maxlength", countryLength);
                login_phone.attr("placeholder", placeholder); // Set placeholder

                // Set the country ID in the hidden input
                $('#country_id').val(countryId);
            });
        });



    </script>
@endpush