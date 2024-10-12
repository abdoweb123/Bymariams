@extends('Client.layouts.layout')

@section('content')


@isset($Sliders[0])    
    @php($Slider = $Sliders[0])
    <div class="container-fluid  section-top px-0 py-2 ">
        <img class="w-100 d-none d-md-block" src="{{ asset($Slider->image_lg) }}">
        <img class="w-100 d-md-none" src="{{ asset($Slider->image_sm) }}">
    </div>
@endisset
@if($MostSelling->count())
    <div class="container  py-lg-3" data-aos="fade-up">
        <div class="row ">
            
            
            <div class="col-12 px-2">
                <h3 class=" text-black fs-6 mb-0 pb-lg-3 lh-base">
                    @lang('trans.mostselling')
                </h3>
            </div>
        </div>
        <div>
            <div class=" slider2 regular row">
                @foreach ($MostSelling as $Product)        
                    <div class=" col-6 p-2">
                        <a href="{{ route('client.product',$Product) }}">
                            <div class="card  border-0 rounded-0  position-relative ">
                                <div class="d-flex align-items-center">
                                    <img class="w-100 h-auto" src="{{ asset($Product->RandomImage() ?? setting('logo')) }}" />
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endif
@isset($Sliders[1])    
    @php($Slider = $Sliders[1])
    <div class="container-fluid   px-0 py-2 mb-0">
        <img class="w-100 d-none d-md-block" src="{{ asset($Slider->image_lg) }}">
        <img class="w-100 d-md-none" src="{{ asset($Slider->image_sm) }}">
    </div>
@endisset
@if($Popular->count())
<div class="container  py-lg-3" data-aos="fade-up">
    <div class="row ">
        <div class="col-12 d-flex justify-content-between align-items-center px-2">
            <h3 class=" fs-6 mb-0 pb-lg-3">
                @lang('trans.popular')
            </h3>
            <a class="text-black text-decoration-underline" href="{{ route('client.shop') }}">@lang('trans.all')</a>
        </div>
    </div>
    <div class="row ">
        <div class="px-0 slick-slider slider-title regular ">
            @foreach ($Popular as $Product)       
                <div class=" p-2  position-relative">
                    @include('Client.layouts.product',['Product'=>$Product])
                </div>
            @endforeach
        </div>
    </div>
</div>
@endif

@if($Offers->count())
<div class="container  py-lg-3" data-aos="fade-up">
    <div class="row py-2">
        <div class="col-12 d-flex justify-content-between align-items-center">
            <h3 class=" fw-bold pb-lg-3">@lang('trans.offers')</h3>
            <a class="text-black text-decoration-underline" href="{{ route('client.shop') }}">@lang('trans.all')</a>
        </div>
    </div>
    <div class="row py-2">
        <div class="px-0 slick-slider slider-title regular ">
            @foreach ($Offers as $Product)     
                <div class=" p-2   position-relative ">
                    @include('Client.layouts.product',['Product'=>$Product])
                </div>
            @endforeach
        </div>
    </div>
</div>
@endif


@endsection

@push('css')


@endpush
@push('js')


<script>
    AOS.init({
        once: true
    })

    document.addEventListener('DOMContentLoaded', function() {
        var seeAllProductLinks = document.querySelectorAll('.seeall-product');

        seeAllProductLinks.forEach(function(link) {
            link.addEventListener('click', function() {
                console.log("hi");

                var container = this.closest('.container');
                var h3Element = container.querySelector('h3');
                var activeLinkText = h3Element.textContent.trim();
                localStorage.setItem('activeLinkText', activeLinkText);
            });
        });
    });

    $(".slick-slider").slick({
        infinite: true
        , slidesToShow: 4
        , slidesToScroll: 1
        , autoplay: true
        , arrows: false
        , dots: false
        , autoplaySpeed: 1000
        , responsive: [{
                breakpoint: 1024
                , settings: {
                    slidesToShow: 3
                    , infinite: true
                , }
            , }
            , {
                breakpoint: 919
                , settings: {
                    slidesToShow: 2
                , }
            , }
        ]
    , });

    $(document).on("click", ".list-group-item .toggle", function() {
        $(this).parent().find('ul').toggleClass('d-none');
    });

</script>
@endpush
