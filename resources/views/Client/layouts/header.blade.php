<style>
    .dropdown-toggle::before {
    display: inline-block;
    margin-right: .255em;
    vertical-align: .255em;
    content: "";
    border-top: .3em solid;
    border-right: .3em solid transparent;
    border-bottom: 0;
    border-left: .3em solid transparent;
}
    .dropdown-toggle::after {
    display: none;

}
.navbar-brand img{
    width:190px;
}

@media only screen and (max-width: 991px) {
    .offcanvas-body ul li a {
    font-size: 16px;
}
/*.container.nav.navbar-expand-lg{*/
/*    padding-right:0px !important;*/
/*}*/
.navbar-brand img{
    width:150px;
}
/*.offcanvas{*/
/*    bottom:auto;*/
/*}*/
}
</style>
<nav class="bg-white  py-3  position-fixed end-0 start-0 w-100" style="z-index: 999999999;">
    <div class="container nav d-lg-block d-flex w-100  navbar-expand-lg bg-body-tertiary px-0 justify-content-center">
        <div class="row align-items-center w-100 justify-content-center ">
            <div class="col-md-4 col-2 d-flex justify-content-lg-start  justify-content-center align-items-center">
                <a class=" d-flex align-items-center icon-menu" role="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                    <span>
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4 5L20 5" stroke="#0C0C0C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4 12L20 12" stroke="#0C0C0C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4 19L20 19" stroke="#0C0C0C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>


                    </span>



                </a>
            </div>
            <div class="col-md-4 col-8 d-flex justify-content-center align-items-center">
                <a class="navbar-brand   text-center " href="{{ route('client.home') }}">
                    <img class="" style="max-width:100%;margin-top:14px" src="{{ asset(setting('logo')) }}" />
                </a>
            </div>
            <div class="col-md-4 col-2 d-flex justify-content-lg-end  justify-content-center align-items-center">

                <div class="d-flex justify-content-end" id="navbarSupportedContent">

                    <form class="d-flex">
                        @if(!Route::is('client.confirm') )
                            <div class="px-2 d-flex  d-lg-flex d-none" role="button">
                                <span class="px-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 24 24" fill="none">
                                        <mask id="mask0_184_672" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                            <rect width="24" height="24" fill="#D9D9D9" />
                                        </mask>
                                        <g mask="url(#mask0_184_672)">
                                            <path d="M12 22C10.6167 22 9.31667 21.7375 8.1 21.2125C6.88333 20.6875 5.825 19.975 4.925 19.075C4.025 18.175 3.3125 17.1167 2.7875 15.9C2.2625 14.6833 2 13.3833 2 12C2 10.6167 2.2625 9.31667 2.7875 8.1C3.3125 6.88333 4.025 5.825 4.925 4.925C5.825 4.025 6.88333 3.3125 8.1 2.7875C9.31667 2.2625 10.6167 2 12 2C13.3833 2 14.6833 2.2625 15.9 2.7875C17.1167 3.3125 18.175 4.025 19.075 4.925C19.975 5.825 20.6875 6.88333 21.2125 8.1C21.7375 9.31667 22 10.6167 22 12C22 13.3833 21.7375 14.6833 21.2125 15.9C20.6875 17.1167 19.975 18.175 19.075 19.075C18.175 19.975 17.1167 20.6875 15.9 21.2125C14.6833 21.7375 13.3833 22 12 22ZM12 20C14.2333 20 16.125 19.225 17.675 17.675C19.225 16.125 20 14.2333 20 12C20 11.8833 19.9958 11.7625 19.9875 11.6375C19.9792 11.5125 19.975 11.4083 19.975 11.325C19.8917 11.8083 19.6667 12.2083 19.3 12.525C18.9333 12.8417 18.5 13 18 13H16C15.45 13 14.9792 12.8042 14.5875 12.4125C14.1958 12.0208 14 11.55 14 11V10H10V8C10 7.45 10.1958 6.97917 10.5875 6.5875C10.9792 6.19583 11.45 6 12 6H13C13 5.61667 13.1042 5.27917 13.3125 4.9875C13.5208 4.69583 13.775 4.45833 14.075 4.275C13.7417 4.19167 13.4042 4.125 13.0625 4.075C12.7208 4.025 12.3667 4 12 4C9.76667 4 7.875 4.775 6.325 6.325C4.775 7.875 4 9.76667 4 12H9C10.1 12 11.0417 12.3917 11.825 13.175C12.6083 13.9583 13 14.9 13 16V17H10V19.75C10.3333 19.8333 10.6625 19.8958 10.9875 19.9375C11.3125 19.9792 11.65 20 12 20Z" fill="#0C0C0C" />
                                        </g>
                                    </svg>
                                </span>

                                <a href="{{ route('lang',lang('ar') ? 'en' : 'ar') }}">
                                    <span class="text-black">{{ lang('ar') ? 'English' : 'العربية' }}</span>
                                </a>
                            </div>
                        @endif
                        <div class="px-2 search-input-icon d-lg-flex d-none " role="button">
                            <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                <circle cx="9" cy="8.99994" r="8" stroke="#0C0C0C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                <path d="M14.5 14.9579L19.5 19.9579" stroke="#0C0C0C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            </svg> </div>
                        <div class="px-2  d-lg-flex d-none">
                            <a href="{{ !auth('client')->check() ?  route('client.login') : route('client.profile') }}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="19" viewBox="0 0 16 19" fill="none">
                                    <circle cx="4" cy="4" r="4" transform="matrix(-1 0 0 1 12 1)" stroke="#0C0C0C" stroke-width="1.5" />
                                    <path d="M1 14.9347C1 14.0743 1.54085 13.3068 2.35109 13.0175V13.0175C6.00404 11.7128 9.99596 11.7128 13.6489 13.0175V13.0175C14.4591 13.3068 15 14.0743 15 14.9347V16.2502C15 17.4376 13.9483 18.3498 12.7728 18.1818L11.8184 18.0455C9.28565 17.6837 6.71435 17.6837 4.18162 18.0455L3.22721 18.1818C2.0517 18.3498 1 17.4376 1 16.2502V14.9347Z" stroke="#0C0C0C" stroke-width="1.5" />
                                </svg>
                            </a> 
                        </div>
                        {{--
                        <div class="px-2  d-lg-flex d-none" onclick="document.location='{{ route('client.washList') }}'" role="button">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                <path d="M3.66275 13.2136L9.82377 19.7066C11.0068 20.9533 12.9932 20.9534 14.1762 19.7066L20.3372 13.2136C22.5542 10.8771 22.5543 7.08895 20.3373 4.75248C18.1203 2.416 14.5258 2.416 12.3088 4.75248V4.75248C12.1409 4.92938 11.8591 4.92938 11.6912 4.75248V4.75248C9.47421 2.416 5.87975 2.416 3.66275 4.75248C1.44575 7.08895 1.44575 10.8771 3.66275 13.2136Z" stroke="#0C0C0C" stroke-width="1.5" />
                            </svg>
                        </div>
                        --}}
                        <div class="px-md-2 ">

                            <!--@if(cart_count())-->
                            <!--<small class="bg-danger text-white rounded-circle" style="position: absolute;right: 0px;top: -9px;padding: 0px 4px 1px 4px;">-->
                            <!--    {{ cart_count() }}-->
                            <!--</small>-->
                            <!--@endif-->
                            <a class=" position-relative p-0" href="{{ route('client.cart') }}">
                                                              @if(cart_count())
                            <span class="icon-number position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" style="font-size: 8px;">
                                        {{ cart_count() }}
                                        </span>
                                            @endif
                                            <span>
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3.06164 14.4413L3.42688 12.2985C3.85856 9.76583 4.0744 8.49951 4.92914 7.74975C5.78389 7 7.01171 7 9.46734 7H14.5327C16.9883 7 18.2161 7 19.0709 7.74975C19.9256 8.49951 20.1414 9.76583 20.5731 12.2985L20.9384 14.4413C21.5357 17.946 21.8344 19.6983 20.9147 20.8491C19.995 22 18.2959 22 14.8979 22H9.1021C5.70406 22 4.00504 22 3.08533 20.8491C2.16562 19.6983 2.4643 17.946 3.06164 14.4413Z" stroke="#0C0C0C" stroke-width="1.5"/>
<path d="M7.5 9L7.71501 5.98983C7.87559 3.74176 9.7462 2 12 2C14.2538 2 16.1244 3.74176 16.285 5.98983L16.5 9" stroke="#0C0C0C" stroke-width="1.5" stroke-linecap="round"/>
</svg>


                                            </span>



                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</nav>
<div class="search-container position-fixed top-0 start-0 end-0 bottom-0 bg-white">
    <a type="button" class="close-div position-absolute">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </a>
    <form action="{{ route('client.shop') }}" class="h-100  d-flex justify-content-center align-items-center">
        <input type="search" name="search" class="nosubmit search-input border rounded-2 border-1 border-black" placeholder="@lang('trans.searchByName')....">
    </form>
</div>
<div class="offcanvas offcanvas-{{ lang('en') ? 'start' : 'end' }} " tabindex="-1" id="offcanvasRight" style="max-width:80%; bottom:auto"  >
    <div class="offcanvas-header justify-content-between py-md-2 py-0">
        <a href="{{ route('client.home') }}">
            <img class="mt-2" width="181" src="{{ setting('logo') }}" />
        </a>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
            <i class="fa-solid fa-xmark"></i>
        </button>
    </div>
    <div class="offcanvas-body h-100 d-flex flex-column py-3">

        <ul class="navbar-nav  mb-2 mb-lg-0 p-3 text-uppercase gap-2">
            <li class="nav-item ">
                <form action="{{ route('client.shop') }}"  class="input-group {{ lang() == 'en' ? '' : 'flex-row-reverse' }}" style="background: #cacaca;    border-radius: 50px; height:30px ">
                   <input type="search" name="search" class="form-control border-3 py-1 h-100">
                   <div class="input-group-append h-100">
                      <button id="button-addon1" type="submit" class="btn btn-link text-primary h-100 d-flex "><svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="11" cy="10.9999" r="8" stroke="#0C0C0C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.5 16.9579L21.5 21.9579" stroke="#0C0C0C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
</button>
                   </div>
                </form>
            </li>
            <li class="nav-item ">
                <a class="nav-link py-0" aria-current="page" href="{{ route('client.home') }}">
                    <span>
                        @lang('trans.Home')
                    </span>
                </a>
            </li>
            @foreach (Categories() as $Category)
                <li class="nav-item ">
                    <a class="nav-link py-0" aria-current="page" href="{{ route('client.shop',$Category) }}">
                        <span>{{ $Category->title() }}</span>
                    </a>
                </li>
            @endforeach
            <li class="nav-item ">
                <a class="nav-link py-0" aria-current="page" href="{{ route('client.shop') }}">
                    <span>
                        @lang('trans.viewAll')
                    </span>
                </a>
            </li>

        </ul>
        <ul class="navbar-nav  mb-2 mb-lg-0 p-3 text-uppercase gap-2">
                                  <li class="nav-item ">
                <a class="nav-link py-0" aria-current="page" href="{{ route('client.our_story') }}">
                    <span>@lang('trans.OurStory')</span>
                </a>

            </li>
            <!--                        <li class="nav-item ">-->

            <!--    <a class="nav-link py-0" aria-current="page" href="{{ route('client.contact') }}">-->
            <!--        <span>@lang('trans.contact_us')</span>-->
            <!--    </a>-->
            <!--</li>-->
            {{--
            <li class="nav-item ">
                <a class="nav-link py-0" aria-current="page" href="{{ route('client.washList') }}"><span>@lang('trans.wishlist')</span></a>
            </li>
            --}}
            @if (auth('client')->check())
                <li class="nav-item ">
                    <a class="nav-link py-0" aria-current="page" href="{{ route('client.profile') }}"><span>@lang('trans.profile')</span></a>
                </li>
            @else
                <li class="nav-item ">
                    <a class="nav-link py-0" aria-current="page" href="{{ route('client.login') }}"><span>@lang('trans.login')</span></a>
                </li>
            @endif
            @if(!Route::is('client.confirm') )
            <li class="nav-item ">
                <div class="dropdown-center py-0" >
                	<button style="border: 0px !important;" class="btn dropdown-toggle px-0" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                	    <img style="width: 50px;height: 25px;" src="{{ asset(Country()->image) }}" />
                	</button>
                	<ul class="dropdown-menu" style="min-width: 100px !important;">
                	    @foreach(Countries()->whereNotIn('id',Country()->id) as $Country)
                		    <li>
                		        <a class="dropdown-item" href="{{ route('client.set-country',$Country->id) }}">
                		            <img style="width: 40px;height: 20px;" src="{{ asset($Country->image) }}" />
                		            <span class="px-1">
                		                {{ $Country->currancy_code }}
                		            </span>
                		        </a>
                		    </li>
                		@endforeach
                	</ul>
                </div>
            </li>
            @endif
            @if(!Route::is('client.confirm') )
                <li class="nav-item ">
                    <a class="nav-link py-0" aria-current="page" href="{{ route('lang',lang('ar') ? 'en' : 'ar') }}">
                        <span>{{ lang('ar') ? 'English' : 'العربية'  }}</span>
                    </a>
                </li>
            @endif
        </ul>
        @if (auth('client')->check())
            <div class="mt-auto m-auto">
                <a href="{{ route('client.logout') }}" class="text-danger text-decoration-underline">@lang('trans.logout')</a>
            </div>
        @endif
    </div>
</div>

<div id="backTop" style="top: 85%;left: 50%;transform: translate(-50%, 100%);position: fixed;z-index: 99;display: none;max-width: 150px;">
    <span class="btn bg-white border border-1 border-dark rounded-3 gap-2 my-2 px-2 py-2 text-dark explore" style="font-size: 10px;">@lang('trans.backToTop')</span>
</div>