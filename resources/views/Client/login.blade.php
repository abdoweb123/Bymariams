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
                    </a>
                    @lang('trans.home')
                </li>
                <li class="breadcrumb-item fw-semibold" aria-current="page">
                    @lang('trans.Login')
                </li>
            </ol>
        </nav>
    </div>
</div>

<div class="container section-top my-5 w-50">
    <div class="row profile-login justify-content-center" style="column-gap: 10px;">
        <div class="col-12 ">
            <div class="nav flex-row  nav-pills  py-5 justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <button class="nav-link active my-1 border border-3 border-end-0 border-start-0 border-top-0 rounded-0" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">
                    <div class="row">
                        <div class=" col-12 d-flex flex-column justify-content-center text-center">
                            <h6 class="fw-bold  py-2 my-0 text-uppercase text-black px-lg-5">
                                @lang('trans.Login')
                            </h6>
                        </div>
                    </div>
                </button>
                <button class="nav-link my-1 border border-3 border-end-0 border-start-0 border-top-0 rounded-0" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                    <div class="row">
                        <div class="col-12 d-flex flex-column justify-content-center text-center">
                            <h6 class="fw-bold py-2 my-0 text-uppercase text-black px-lg-5 text-nowrap">
                                @lang('trans.create_new_account')
                            </h6>
                        </div>
                    </div>
                </button>
            </div>
        </div>

        <div class="col-lg-8 col-12 " style="min-height: 70vh;">
            <div class="row ">
                <div class="col-12 ">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">
                            <form action="{{ route('client.login') }}" class="px-2" method="POST">
                                @csrf
                                <div class="mb-3 d-flex flex-column">
                                    <label for="phone" class="form-label">@lang('trans.Phone')</label>
                                    <input type="hidden" name="country_id" value="{{ Country()->id }}" id="login_country_id">
                                    <input required type="tel" style="padding: 10px 94px;direction: {{ lang('ar') ? 'rtl' : 'ltr'; }};"  class="form-control rounded-3 w-100 phone" id="login_phone" name="phone" placeholder="33******">
                                </div>
                                <div class="mb-3">
                                    <label for="Password" class="form-label">@lang('trans.Password')</label>
                                    <input required type="password" name="password" class="form-control rounded-3" name="password" placeholder="******">
                                </div>

                                <div class="mb-1 w-100 d-flex justify-content-center">
                                    <button type="submit" class="btn btn-dark px-4 btn m-auto border border-1 border-dark rounded-3 gap-2 my-2  py-2">
                                        @lang('trans.login')
                                        </submit>
                                </div>
                                <div class="row gap-2">
                                    <div class="col-12 d-grid gap-2 d-md-flex justify-content-center px-3">
                                        <a href="{{ route('client.forget') }}" class="text-secondary text-decoration-underline" type="button">@lang('trans.forgetPassword')</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0">
                            <div class="row">
                                <div class="col-12">
                                    <form action="{{ route('client.register') }}" class="px-2" method="POST">
                                        @csrf
                                        <div class="mb-3">
                                            <label for="name" class="form-label">@lang('trans.name')</label>
                                            <input required type="text" class="form-control rounded-3" name="name" placeholder="Ahmed">
                                        </div>
                                        <div class="mb-3 d-flex flex-column">
                                            <label for="phone" class="form-label">@lang('trans.Phone')</label>
                                            <input type="hidden" name="country_id" value="{{ Country()->id }}" id="register_country_id">
                                            <input required type="tel" style="padding: 10px 94px;direction: {{ lang('ar') ? 'rtl' : 'ltr'; }};"  class="form-control rounded-3 w-100 phone" id="register_phone" name="phone" placeholder="33******">
                                        </div>
                                        <div class="mb-3">
                                            <label for="email" class="form-label">@lang('trans.email')</label>
                                            <input type="email" name="email" class="form-control rounded-3" placeholder="ah***@gmail.com">
                                        </div>
                                        <div class="mb-3">
                                            <label for="Password" class="form-label">@lang('trans.Password')</label>
                                            <input required type="password" name="password" class="form-control rounded-3" name="password" placeholder="******">
                                        </div>


                                        <div class="mb-3 w-100 d-flex justify-content-center">
                                            <button type="submit" class="btn btn-dark px-4 btn m-auto border border-1 border-dark rounded-3 gap-2 my-2  py-2">
                                                @lang('trans.create_new_account')
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection


@push('css')
    <link rel="stylesheet" href="https://unpkg.com/intl-tel-input@17.0.3/build/css/intlTelInput.css">
@endpush
@push('js')
    <script src="https://unpkg.com/intl-tel-input@17.0.3/build/js/intlTelInput.js"></script>

    <script>

        // Initialize intlTelInput for login phone
        var itiLogin = window.intlTelInput(document.querySelector("#login_phone"), {
            separateDialCode: true,
            onlyCountries: @json(allCountries()->pluck('country_code')->toArray()),
            utilsScript: "https://unpkg.com/intl-tel-input@17.0.3/build/js/utils.js",
            preferredCountries: ["{{ Country()->country_code }}"],
        });

        // Store the itiLogin instance globally
        window.itiLogin = itiLogin;

        // Listen for country change event on the login phone input
        document.querySelector("#login_phone").addEventListener("countrychange", function() {
            // Clear the phone input value
            $('#login_phone').val('');

            // Get the dial code of the selected country
            let dialCode = itiLogin.getSelectedCountryData().dialCode;

            // Initialize variables for country length and ID
            let countryLength = 0;
            let countryId = null;
            let placeholder = ""; // Initialize placeholder as an empty string

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
            var login_phone = $('#login_phone');
            login_phone.attr("maxlength", countryLength);
            login_phone.attr("placeholder", placeholder); // Set placeholder


            // Set the country ID in the hidden input
            $('#login_country_id').val(countryId);
        });







        // Initialize intlTelInput for register phone
        var itiRegister = window.intlTelInput(document.querySelector("#register_phone"), {
            separateDialCode: true,
            onlyCountries: @json(allCountries()->pluck('country_code')->toArray()),
            utilsScript: "https://unpkg.com/intl-tel-input@17.0.3/build/js/utils.js",
            preferredCountries: ["{{ Country()->country_code }}"],
        });

        // Store the itiRegister instance globally
        window.itiRegister = itiRegister;

        // Listen for country change event on the register phone input
        document.querySelector("#register_phone").addEventListener("countrychange", function() {
            // Clear the phone input value
            $('#register_phone').val('');

            // Get the dial code of the selected country
            let dialCode = itiRegister.getSelectedCountryData().dialCode;
            let countryLength = 0;
            let country_id = null; // Initialize country_id as null
            let placeholder = ""; // Initialize placeholder as an empty string

            // Loop through all countries to find the matching one by dial code
            $.each(@json(allCountries()), function (key, element) {
                if (element.phone_code.includes(dialCode)) {
                    countryLength = element.length;
                    country_id = element.id;
                    placeholder = '*'.repeat(countryLength);
                    return false; // Break out of the loop once a match is found
                }
            });

            // Check if a matching country was found
            if (country_id) {
                $('#register_country_id').val(country_id);
                console.log(countryLength);
                var register_phone = $('#register_phone');
                register_phone.attr("maxlength", countryLength);
                register_phone.attr("placeholder", placeholder); // Set placeholder
            } else {
                // Handle cases where no matching country was found
                console.log('No matching country found for dial code:', dialCode);
                $('#register_country_id').val(''); // Optionally, clear the hidden input
            }
        });
    </script>
@endpush