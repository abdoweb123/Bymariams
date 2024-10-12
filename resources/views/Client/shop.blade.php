 @extends('Client.layouts.layout')
<style>
    .breadcrumb {
    display: flex;
    flex-wrap: nowrap;
    align-items: center;
}

.breadcrumb-item {
    display: inline-flex;
    align-items: center;
}

.pagination{
    justify-content: center;
}

.pagination .active .page-link{
    background-color: gray;
    border-color: gray;
}

.pagination .page-link, .pagination .page-item{
    height: 32px;
    line-height: normal;
    font-size: 14px;
}

.pagination .page-link{
    color: gray;
}
</style>
@section('content')



<div class="container py-5">
        <div class=" align-items-center py-2 d-flex justify-content-between">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item">
                    <a href="{{ route('client.home') }}" class="d-flex align-items-center gap-1">
<!--                        <span class=""><svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">-->
<!--<path d="M1.35139 12.2135C0.998371 9.91624 0.821861 8.76763 1.25617 7.74938C1.69047 6.73112 2.65403 6.03443 4.58114 4.64106L6.02099 3.6C8.41829 1.86667 9.61694 1 11 1C12.3831 1 13.5817 1.86667 15.979 3.6L17.4189 4.64106C19.346 6.03443 20.3095 6.73112 20.7438 7.74938C21.1781 8.76763 21.0016 9.91624 20.6486 12.2135L20.3476 14.1724C19.8471 17.4289 19.5969 19.0572 18.429 20.0286C17.2611 21 15.5537 21 12.1388 21H9.86119C6.44633 21 4.73891 21 3.571 20.0286C2.40309 19.0572 2.15287 17.4289 1.65243 14.1724L1.35139 12.2135Z" stroke="#0C0C0C" stroke-width="1.5" stroke-linejoin="round"/>-->
<!--</svg>-->

<!--</span>-->
<span class="pt-1"> @lang('trans.Home')</span>
                       
                    </a>
                </li>
                <li class="breadcrumb-item fw-semibold pt-1" aria-current="page">@lang('trans.Products')</li>
            </ol>
        </nav>
                    <div class="row  d-lg-none d-block">
            <h4 class="d-lg-none d-flex gap-1  text-uppercase mb-0  pt-1" style="color:#41598e;font-size: 14px;"  data-bs-toggle="offcanvas" href="#offcanvasExample2" role="button" aria-controls="offcanvasExample2">
                <div class="text-decoration-underline">
                                    @lang('trans.filter')

                </div>
                <div >
<!--                    <svg width="18" height="19" viewBox="0 0 11 13" fill="none" xmlns="http://www.w3.org/2000/svg">-->
<!--<path d="M1.92513 1.13751H9.07513C9.67096 1.13751 10.1585 1.62501 10.1585 2.22085V3.41251C10.1585 3.84585 9.88763 4.38751 9.6168 4.65835L7.28763 6.71668C6.96263 6.98751 6.74596 7.52918 6.74596 7.96251V10.2917C6.74596 10.6167 6.5293 11.05 6.25846 11.2125L5.50013 11.7C4.79596 12.1333 3.82096 11.6458 3.82096 10.7792V7.90835C3.82096 7.52918 3.6043 7.04168 3.38763 6.77084L1.3293 4.60418C1.05846 4.33335 0.841797 3.84585 0.841797 3.52085V2.27501C0.841797 1.62501 1.3293 1.13751 1.92513 1.13751Z" stroke="#646464" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>-->
<!--</svg>-->

</div>
            </h4>
        </div>
    </div>

    <div class="row  py-2">
        <div class="col-lg-3  d-lg-block d-none border border-1 border-black my-3 ">
            @include('Client.layouts.Filter')
        </div>
        <div class="col-lg-9">

            @if ($Products->count())
                <div class="row p-2">
                    @foreach ($Products as $Product)
                    <div class=" col-lg-4 col-md-4 col-6  position-relative px-0">
                        <div class="p-2">
                                                    @include('Client.layouts.product',['Product'=>$Product])

                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="col-12">
                    @if ($Products->hasPages())
                    <div class="pagination-wrapper">
                        {{ $Products->links('pagination::bootstrap-4') }}
                    </div>
                    @endif
                </div>
            @else
                <div class="row justify-content-center align-items-center">
{{--                    <div class="img d-flex justify-content-center">--}}
{{--                        <img src="assets/imgs/empaty/7166991_3554477 1.svg">--}}
{{--                    </div>--}}
                    <div class="py-4">
                        <p class="text-secondary text-center">@lang('trans.Data not found')</p>
                    </div>
                </div>
            @endif
           
        </div>
    </div>
</div>


<div class="offcanvas offcanvas2 offcanvas-start" tabindex="-1" id="offcanvasExample2" aria-labelledby="offcanvasExampleLabel" style="overflow-y:auto">
    <div class="offcanvas-header justify-content-end " style="padding-top:20%">

    </div>
    <div class="offcanvas-body ">
        <div class="d-flex justify-content-end">
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
            <i class="fa-solid fa-xmark fs-6"></i>
        </button>
        </div>

        @include('Client.layouts.Filter')
    </div>
</div>

@endsection


@push('js')
<script>
    $(document).on("click", ".Toggle", function() {
        $(this).toggleClass('active');
    });

</script>
@endpush
