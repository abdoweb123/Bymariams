<div class="text-uppercase" style="background: #686868;max-width: 100% !important;">
    
    <div class="py-3 container-lg ">
        <div class="row justify-content-between " >
            <div class="col-md-4 col-12 d-flex ">
                <ul class="p-0 fs-6 mb-0">
                    <li class="py-md-1 py-2">
                        <a href="{{ route('client.home') }}" class="text-white">
                            @lang('trans.Home')
                        </a>
                    </li>
                    <li class="py-md-1 py-2">
                        <a href="{{ route('client.about') }}" class="text-white">
                            @lang('trans.about_us')
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-4 col-12 ">
                <ul class="p-0 fs-6 mb-0">
                                        <li class="py-md-1 py-2">
                        <a href="{{ route('client.terms') }}" class="text-white">
                            @lang('trans.terms')
                        </a>
                    </li>
                    <li class="py-md-1 py-2">
                        <a href="{{ route('client.product_care') }}" class="text-white">
                            @lang('trans.product_care')
                        </a>
                    </li>
                                        <li class="py-md-1 py-2">
                        <a role="button" data-bs-toggle="modal" data-bs-target="#filter" class="text-white">
                            @lang('trans.SizeGuide')
                        </a>
                    </li>
                                        <li class="py-md-1 py-2 ">
                        <a href="{{ route('client.privacy') }}" class="text-white">
                            @lang('trans.privacy')
                        </a>
                    </li>

                </ul>
            </div>
            <!--<div class="col-md-2 col-12 d-flex ">-->
            <!--    <ul class="p-0 fs-6 mb-0">-->
            <!--        <li class="py-md-1 py-1">-->
            <!--            <a class="nav-link py-0" class="text-white" aria-current="page" href="{{ route('client.our_story') }}">-->
            <!--               @lang('trans.OurStory')-->
            <!--            </a>-->

            <!--        </li>-->

            <!--    </ul>-->
            <!--</div>-->
            <!--<div class="col-md-2 col-12 d-flex ">-->
            <!--    <ul class="p-0 fs-6 mb-0">-->
            <!--        <li class="py-md-1 py-1">-->
            <!--            <a href="{{ route('client.contact') }}" class="text-white">-->
            <!--                @lang('trans.contact_us')-->
            <!--            </a>-->
            <!--        </li>-->
            <!--    </ul>-->
            <!--</div>-->
            <div class="col-md-3 col-12 py-md-0 py-4">
                <h4 class="p-lg-2 py-1 text-white fs-6">
                    @lang('trans.Get_in_Touch')
                </h4>
                <ul class="social d-flex p-0 gap-2">
                    @foreach(SocialMediaIcons()->sortBy('icon') as $item)
                        <li>
                            <a href="{{ $item->link }}" class="main_link " aria-hidden="true">
                                <span>
                                    @if(str_contains($item->icon, 'emcan'))
                                        <img style="width: 20px;border-radius: 50%;" alt="{{ str_replace('fa-brands', '', str_replace('fa-solid', '', str_replace('fa-regular', '', str_replace(' ', '-', $item->name)))) }}" class="h4 mx-2 point" src='{{ $item->icon }}'/>
                                    @else
                                        <i class="h5 mx-2 point pt-2 {{ $item->icon }} icon"></i>
                                    @endif
                                </span>
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    
        <div class="row justify-content-center">
            <div class="col-md-7 col-12 text-center fs-6 border-top py-2 text-uppercase">
                @Bymariams
            </div>
            <div class="col-md-7 col-12 text-center  emcan" style="margin-bottom: 40px;">
                @lang('trans.copyrights')
            </div>
    
        </div>
    
    </div>
</div>
<div class="modal fade " id="filter" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">

                    <div class="row fs-6">
                        <img src="{{ asset(setting('SizeGuide')) }}" alt="@lang('trans.SizeGuide')">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
