@extends('Client.layouts.layout')
@section('content')


@if ($Cart->count())
    <form action="{{ route('client.confirm') }}" method="POST">
        @csrf

        <div class="bg-ccc py-5">
            <div class="container" style="min-height:50vh">
                <div class="row">
                    <div class="col-xl-8">

                        @foreach ($Cart as $CartItem)       
                            @php($Product = $Products->where('id',$CartItem->product_id)->first())
                            @php($ProPrice = format_number($Product->CalcPrice() + $CartItem->additions?->sum('price')) )
                            <div class="card border shadow-none" id="cart-{{ $CartItem->id }}">
                                <div class="card-body p-0">
                                    <i class="fa-solid fa-trash-can text-danger position-absolute h4 point" style="right: 20px;bottom: 10px;" data-id="{{ $CartItem->id }}"></i>
                                    <div class="row border-bottom pb-3 p-3">
                                        <div class="col-md-2">
                                            <img src="{{ asset($CartItem->Product->RandomImage()) }}" alt="" class="rounded w-100">
                                        </div>
                                        <div class="col-md-10  my-3">
                                            <div>
                                                <div class="text-truncate font-size-18 d-flex justify-content-between">
                                                    <small>
                                                        <a href="{{ route('client.product',$CartItem->Product) }}" class="text-dark">
                                                            {{ $CartItem->Product->title() }}
                                                        </a> 
                                                    </small>
                                                    <div class="d-inline-flex">
                                                        <div class="number d-flex align-items-center">
                                                            <span data-id="{{ $CartItem->id }}" class="minus">-</span>
                                                            <input data-price="{{ $ProPrice  }}" data-exclusive-vat="{{ $CartItem->Product->VAT == 'exclusive' ? $ProPrice : 0  }}" data-id="{{ $CartItem->id }}" data-discount="{{ format_number($Product->Price() + $CartItem->additions?->sum('price')) -  $ProPrice }}" type="text" class="form-control border-0" value="{{ $CartItem->quantity }}" readonly />
                                                            <span data-id="{{ $CartItem->id }}" class="plus">+</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p><span id="total-{{ $CartItem->id }}">{{ $ProPrice * $CartItem->quantity }}</span> <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span></p>
                                                @if ($CartItem->Size)
                                                <p class="mb-0 mt-1">@lang('trans.size') : <span class="fw-medium">{{ $CartItem->Size->title() }}</span></p>
                                                @endif
                                                @if ($CartItem->Color)
                                                <p class="mb-0 mt-1">@lang('trans.color') : <span class="fw-medium">{{ $CartItem->Color->title() }}</span></p>
                                                @endif
                                                @if ($CartItem->width)
                                                    <p class="mb-0 mt-1">@lang('trans.width') : <span class="fw-medium">{{ $CartItem->width->title() }}</span></p>
                                                @endif
                                                @if ($CartItem->chestWidth)
                                                    <p class="mb-0 mt-1">@lang('trans.chest_width') : <span class="fw-medium">{{ $CartItem->chestWidth->title() }}</span></p>
                                                @endif
                                                @if ($CartItem->Drink)
                                                <p class="mb-0 mt-1">@lang('trans.drinks') : <span class="fw-medium">{{ $CartItem->Drink->title() }}</span></p>
                                                @endif
                                                @if ($CartItem->additions)
                                                    <p class="mb-0 mt-1">@lang('trans.additions') : <span class="fw-medium">{{ $CartItem->additions->implode('title_'.lang(), ', ') }}</span></p>
                                                @endif
                                                @if ($CartItem->removes)
                                                    <p class="mb-0 mt-1">@lang('trans.removes') : <span class="fw-medium">{{ $CartItem->removes->implode('title_'.lang(), ', ') }}</span></p>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="flex-shrink-0 ms-2">
                                            <ul class="list-inline mb-0 font-size-16">
                                                <li class="list-inline-item">
                                                    <a href="#" class="text-muted px-1">
                                                        <i class="mdi mdi-trash-can-outline"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="#" class="text-muted px-1">
                                                        <i class="mdi mdi-heart-outline"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                  
                                </div>
                            </div>
                        @endforeach

                    </div>
                
                    <div class="col-xl-4">
                        
                        @if(Deliveries()->count() > 1)
                            <div class="mt-5 mt-lg-0">
                                <div class="card border shadow-none" style="text-align: inherit">
                                    <div class="card-header bg-transparent border-bottom py-3 px-4">
                                        <h5 class="font-size-16 mb-0">@lang('trans.Delivery Information')</h5>
                                    </div>
                                    <div class="card-body p-4 pt-2">
                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <tbody>
                                                    @foreach (Deliveries() as $Delivery)        
                                                        <tr>
                                                            <td>
                                                                <div class="form-check form-check-inline">
                                                                    <label for="del-{{ $Delivery->id }}">
                                                                        @if ($Delivery->id == 1)
                                                                            <img src="{{ asset('assets/imgs/delivery.png') }}" alt="delivery" style="max-width: 50px;margin: 0px 5px">
                                                                        @elseif ($Delivery->id == 2)
                                                                            <img src="{{ asset('assets/imgs/pickup.png') }}" alt="delivery" style="max-width: 50px;margin: 0px 5px">
                                                                        @else
                                                                            <img src="{{ asset('assets/imgs/dinein.svg') }}" alt="delivery" style="max-width: 50px;margin: 0px 5px">
                                                                        @endif
                                                                    </label>
                                                                    <input class="form-check-input" style="margin-top: 15px;" type="radio" name="delivery_id" id="del-{{ $Delivery->id }}" value="{{ $Delivery->id }}" @checked($loop->first)>
                                                                    <label class="form-check-label" for="del-{{ $Delivery->id }}">{{ $Delivery->title() }}</label>
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
                        @else
                            <input type="hidden" name="delivery_id" id="delivery_id" value="{{ Deliveries()->first()->id }}">
                        @endif
                        
                        
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
                                                    <td>@lang('trans.sub_total') :</td>
                                                    <td class=""> <span id="sub_total">1</span> <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span></td>
                                                </tr>
                                                <tr>
                                                    <td>@lang('trans.Discount') : </td>
                                                    <td class="">-  <span id="discount">1</span> <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span></td>
                                                </tr>
                                                <tr>
                                                    <td>@lang('trans.vat') ( {{ setting('VAT') }}% ) : </td>
                                                    <td class=""> <span id="vat">1</span> <span class="{{ lang() == 'ar' && !in_array(Country()->currancy_code, ['€','£','$']) ? 'float-end px-1' : (lang() == 'en' && in_array(Country()->currancy_code, ['€','£','$']) ? 'float-start px-1' : '') }}">{{ Country()->currancy_code }} </span></td>
                                                </tr>
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
                        <div class="mt-5 mt-lg-0">
                            <div class="mb-3 w-100 d-flex flex-column align-items-center">
                                <a  href="{{ route('client.shop') }}" class="btn btn-dark px-4 btn m-auto border border-1 border-dark rounded-3 gap-2 my-2 w-50 py-2">@lang('trans.Continue Shopping')</a>
                                <button type="submit" href="checkoutDelivery.html" class="btn btn-dark px-4 btn m-auto border border-1 border-dark rounded-3 gap-2 my-2 w-50 py-2">@lang('trans.checkout')</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
@else
    <div class="row">
        <div class="align-items-center d-flex flex-column justify-content-center m-auto py-5 text-center gap-3 cart-empty" style="">
            <img src="{{ asset('assets/imgs/empty-cart.png') }}" class="" alt="empty-cart" >
            <h3>@lang('trans.Empty Shopping Cart.')</h3>
        </div>
    </div>
@endif
@endsection

@push('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>

        function formatNumber(number) {
            // Apply ceiling to the number and return it as a number with 1 decimal place
            return parseFloat((Math.ceil(number * 10) / 10).toFixed(1));
        }

        $(document).on("click", ".fa-trash-can", function () {
            id = $(this).attr('data-id');
            $('#cart-'+id).remove();
            if($('.number').length == 0){
                location.reload(true);
            }
            $.ajax({
                url: "{{ route('client.deleteitem') }}",
                dataType: "json",
                type: "POST",
                async: true,
                data: {
                    id: id
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (data) {
                    toast(data.type,data.message);
                    calc();
                }
            });
        });
        $(document).on("click", ".minus", function () {
            var $input = $(this).parent().find('input');
            var count = parseInt($input.val()) - 1;
            count = count < 1 ? 1 : count;
            $input.val(count);
            $input.change();
            calc();


            id = $(this).attr('data-id');
            $.ajax({
                url: "{{ route('client.minus') }}",
                dataType: "json",
                type: "POST",
                async: true,
                data: {
                    id: id,
                    count: count,
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (data) {
                    toast(data.type,data.message);
                }
            });
        });
        $(document).on("click", ".plus", function () {
            var $input = $(this).parent().find('input');
            var count = parseInt($input.val()) + 1;
            id = $(this).attr('data-id');

            $.ajax({
                url: "{{ route('client.plus') }}",
                dataType: "json",
                type: "POST",
                async: true,
                data: {
                    id: id,
                    count: count,
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (data) {
                    toast(data.type,data.message);
                    $input.val(count);
                    $input.change();
                    calc();
                }
            });
        });

        function calc(){
            {{--decimals = {{ Country()->decimals }};--}}
            decimals = 1;
            sub_total = 0;
            discount = 0;
            vat_percentage = {{ setting('VAT') }};
            $('.number').each(function(i, obj) {
                total = 0;
                id = parseFloat($(obj).find('input').attr('data-id'));
                quantity = parseFloat($(obj).find('input').val());
                price = parseFloat($(obj).find('input').attr('data-price'));
                discount += parseFloat($(obj).find('input').attr('data-discount')) * parseFloat(quantity);
                total = (parseFloat(price) * parseFloat(quantity));
                $('#total-'+id).html(formatNumber(total));
                sub_total += total;
                
                exclusive_sub_total = parseFloat($(obj).find('input').attr('data-exclusive-vat')) * parseFloat(quantity);
            });
            if(discount <= 0){
                $('#discount').parent().parent().addClass('d-none');
            }else{
                $('#discount').parent().parent().removeClass('d-none');
            }
            vat = exclusive_sub_total/100*vat_percentage;
            netTotal = sub_total + vat;
            sub_total += discount;

            sub_total = formatNumber(sub_total);
            discount = formatNumber(discount);
            vat = formatNumber(vat);
            netTotal = formatNumber(netTotal);
            $('#sub_total').html(sub_total);
            $('#discount').html(discount);
            $('#vat').html(vat);
            $('#netTotal').html(netTotal);
        }
        calc();

        function toast(type,title) {
            Swal.fire({
                title: title,
                icon: type,
                confirmButtonText: 'Ok'
            })
        }
    </script>
@endpush



@push('css')
    <style>
        .bg-ccc {
            background-color: #f1f3f7;
        }

        .avatar-lg {
            height: auto;
            max-width: 6rem;
            max-height: 10rem
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
            font-size: 17px;
            border: 1px solid #ddd;
            border-radius: 4px;
            display: inline-block;
            vertical-align: middle;
            max-width: 51px;
        }
        .cart-empty{
            min-height:65vh;
        }
                                .cart-empty img{
                            max-width:150px;

        }    
                                        .cart-empty h3{
                           font-size:14px;
                           font-weight:500;
                           color:#5f5f5f;
                           text-align:center;

        }   
        @media only screen and (max-width: 991px) {
                .cart-empty{
    min-height: 50vh;
        }    
                        .cart-empty img{
                            max-width:100px;

        }    
                                                .cart-empty h3{
                           font-size:12px;

        }   
}
    </style>

@endpush