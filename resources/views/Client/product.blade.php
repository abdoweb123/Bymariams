@extends('Client.layouts.layout')
@section('content')

<style>
    .breadcrumb-item a svg{
        width: 13px !important;
        height: 13px !important;
    }
</style>
<div class="container  section-top">
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
                    {{ $Product->code ? $Product->code . ' - ' : '' }} {{ $Product->title() }}
                </li>
            </ol>
        </nav>
    </div>
</div>

<form action="{{ route('client.addToCart',$Product) }}" method="POST" class=" p-0 my-2">
    @csrf
    <div class="container section-top">
        <div class="row gap-5 scrolling">
            <div class="col-lg-5  col-12">
                <div class="row">
                    @if ($Product->Images->count())
                        <div class="col-md-2 d-md-block d-none h-div" style="overflow-y: scroll;">
                            @foreach ($Product->Images->sortBy('arrangement') as $ImageItem)
                                <div style="height: 65px; margin: 10px 0px; overflow: hidden;" data-bs-target="#ProductImage" data-bs-slide-to="{{ $loop->index }}" @if ($loop->first) class="active" aria-current="true" @endif aria-label="Image {{ $loop->iteration }}">
                                    <img src="{{ asset($ImageItem->image ?? setting('logo')) }}" class="d-block w-100" alt="Image">
                                </div>
                            @endforeach
                        </div>
                        <div class="col-md-10 col-12">
                            <div id="ProductImage" class="carousel slide">
                                @if($Product->Images->count() > 1)
                                <div class="carousel-indicators">
                                    @foreach ($Product->Images as $ImageItem)
                                        <button type="button" data-bs-target="#ProductImage" data-bs-slide-to="{{ $loop->index }}" @if ($loop->first) class="active" aria-current="true" @endif aria-label="Image {{ $loop->iteration }}"></button>
                                    @endforeach
                                </div>
                                @endif
                                <div class="carousel-inner">
                                    @foreach ($Product->Images->sortBy('arrangement') as $ImageItem)
                                        <div  class="carousel-item position-relative {{ $loop->first ? 'active' : '' }}">
                                            <div  class=" d-flex align-items-center justify-content-center h-div">
                                                <img data-fancybox="gallery" data-src="{{ $ImageItem->image }}" src="{{ $ImageItem->image }}" data-caption="Image #{{ $loop->iteration }}" src="{{ asset($ImageItem->image ?? setting('logo')) }}" style="    max-width: 100%;" class="d-block" alt="Image">
                                            </div>
                                            @if ($Product->HasDiscount()) 
                                                <h6 class="vc">{{ format_number($Product->discount,0) }}%</h6>
                                            @endif
                                        </div>
                                    @endforeach
                                </div>
                                @if($Product->Images->count() > 1)
                                    <button class="carousel-control-prev" type="button" data-bs-target="#ProductImage" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#ProductImage" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    </button>
                                @endif
                            </div>
                        </div>
                    @else
                        <img src="{{ asset(setting('logo')) }}" class="d-block w-100" alt="Image">
                    @endif
                </div>
            </div>
            <div class="col-lg-5  col-12">
                <div class="row py-2 border-bottom">
                    <small class="header-card p-0 mb-0 fw-medium  d-flex justify-content-between">
                        <div>
                            {{ $Product->code ? $Product->code . ' - ' : '' }} {{ $Product->title() }}
                        </div>

                        <div>
{{--                             {{ $Product->CalcPrice() }} <span class="{{ lang() == 'ar'? 'float-end px-1' : '' }}">{{ Country()->currancy_code }} </span>--}}
                            {{ $Product->CalcPrice() }} <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span>

                        @if ($Product->HasDiscount())
                                <span class="text-decoration-line-through fs-6 ">{{ $Product->Price() }}</span>
                            @endif
                        </div>
                    </small>
                </div>
                
                
                <div class="row  my-3">
                    <div class="col-12 d-flex justify-content-between align-items-center px-0">
                        <h6 class="p-0 required fw-normal">
                            @lang('trans.size')
                        </h6>
                        <h6 class="text-secondary " role="button" data-bs-toggle="modal" data-bs-target="#filter">
                            <span class="text-decoration-underline px-2 fw-normal ">
                             <small style="font-size:12px">@lang('trans.SizeGuide')</small>
                                    
                            </span>
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                    <mask id="mask0_47_2690" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="16" height="16">
                                        <rect y="3.05176e-05" width="16" height="16" fill="#D9D9D9" />
                                    </mask>
                                    <g mask="url(#mask0_47_2690)">
                                        <path d="M2.66683 12C2.30016 12 1.98627 11.8695 1.72516 11.6084C1.46405 11.3473 1.3335 11.0334 1.3335 10.6667V5.33336C1.3335 4.9667 1.46405 4.65281 1.72516 4.3917C1.98627 4.13059 2.30016 4.00003 2.66683 4.00003H13.3335C13.7002 4.00003 14.0141 4.13059 14.2752 4.3917C14.5363 4.65281 14.6668 4.9667 14.6668 5.33336V10.6667C14.6668 11.0334 14.5363 11.3473 14.2752 11.6084C14.0141 11.8695 13.7002 12 13.3335 12H2.66683ZM2.66683 10.6667H13.3335V5.33336H11.3335V8.00003H10.0002V5.33336H8.66683V8.00003H7.3335V5.33336H6.00016V8.00003H4.66683V5.33336H2.66683V10.6667Z" fill="#9D9D9D" />
                                    </g>
                                </svg>
                            </span>
                        </h6>
                    </div>
                    <select class="form-select border border-1 rounded-0 w-auto border-black " style="width:100% !important" name="size_id" required>
                        <option value="">----</option>
                        @foreach ($Product->Sizes as $Size)
                            <option value="{{ $Size->id }}">{{ $Size->title() }}</option>
                        @endforeach
                    </select>
                </div>
                
                @if($Product->Colors->count())
                    <div class="row   my-3">
                        <h6 class="p-0 required fw-normal">
                                @lang('trans.color')
                        </h6>
                        <select class="form-select border border-1 rounded-0 w-auto border-black " style="width:100% !important" name="color_id" required>
                            <option value="">----</option>
                            @foreach ($Product->Colors as $Color)
                                <option value="{{ $Color->id }}">{{ $Color->title() }}</option>
                            @endforeach
                        </select>
                    </div>
                @endif

                @if($Product->width->count())
                    <div class="row   my-3">
                        <h6 class="p-0 fw-normal">
                            @lang('trans.width')
                        </h6>
                        <select class="form-select border border-1 rounded-0 w-auto border-black " style="width:100% !important" name="width_id" required>
                            <option value="">----</option>
                            @foreach ($Product->width as $width)
                                <option value="{{ $width->id }}">{{ $width->title() }}</option>
                            @endforeach
                        </select>
                    </div>
                @endif

                @if($Product->chestWidth->count())
                    <div class="row   my-3">
                        <h6 class="p-0 fw-normal">
                            @lang('trans.chest_width')
                        </h6>
                        <select class="form-select border border-1 rounded-0 w-auto border-black " style="width:100% !important" name="chest_width_id" required>
                            <option value="">----</option>
                            @foreach ($Product->chestWidth as $chest_width)
                                <option value="{{ $chest_width->id }}">{{ $chest_width->title() }}</option>
                            @endforeach
                        </select>
                    </div>
                @endif



                <div class="row  my-3">
                    <h6 class="p-0 fw-normal">
                            @lang('trans.ADDITIONALINFORMATION')
                            <!--<small>(@lang('trans.optional'))</small>-->
                    </h6>
                    <input type="text" rows="3" name="note" class="form-control py-2 rounded-3">
                </div>
                <input type="hidden" name="quantity" id="quantity" value="1">
                <div class="row my-3 d-flex">
                    <div class="w-100 px-0">
                        <p class="text-danger" id="quantity-not-enough-btn">
                            @lang('trans.outStock')
                        </p>
                        <button type="submit" class="btn btn-dark rounded-5 w-100 py-2 mt-4" id="add-to-cart-btn">@lang('trans.addToCart')</button>
                    </div>
                </div>
                
                
                <p class="card-text body-card text-secondary fs-6 px-0 mb-0 py-3">
                    {!! $Product->desc() !!}
                </p>
            </div>
        </div>
    </div>
</form>
@endsection

@push('css')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css" />
<style>
    .fa-circle.active {
        border: 3px dashed #000;
    }
    .position-fixed{
        z-index: 999 !important;
    }
</style>
@endpush


@push('js')
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js"></script>
<script>

    Fancybox.bind('[data-fancybox="gallery"]', {});

</script>


@endpush





@push('js')
    <script>
        quantity = 0;

        function calc(){
            size_id = $('select[name="size_id"] option:selected').val();
            color_id = $('select[name="color_id"] option:selected').val();
            @json($Product->Quantity).forEach((item, index)=>{
                if(color_id && size_id){
                	if(item['size_id'] == size_id && item['color_id'] == color_id){
                	    quantity = item['quantity'];
                	}
                }else if(size_id && !color_id){
                	if(item['size_id'] == size_id){
                	    quantity = item['quantity'];
                	}
                }else if(!size_id && color_id){
                	if(item['color_id'] == color_id){
                	    quantity = item['quantity'];
                	}
                }
            })
            if(quantity > 0){
                
                $( "#add-to-cart-btn" ).removeClass('d-none');
                $( "#quantity-not-enough-btn" ).addClass('d-none');
            }else{
            
                $( "#add-to-cart-btn" ).addClass('d-none');
                $( "#quantity-not-enough-btn" ).removeClass('d-none');
            }
        }
        $(document).on('change', 'select[name="color_id"]', function() {
            calc();
        });
        $(document).on('change', 'select[name="size_id"]', function() {
            calc();
        });
        calc();

    </script>
    
    
@endpush
