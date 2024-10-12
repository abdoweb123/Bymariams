@extends('Admin.layout')
@section('pagetitle', __('trans.Packages'))
@push('js')
    <script>
        $(document).on("click", "#add_desc", function() {
            if($('#desc_title_ar').val() && $('#desc_title_en').val()){
                $('<div class="row my-3">' +
                    '<div class="col-md-5 col-sm-12">' +
                        '<label>@lang("trans.title_ar")</label>' +
                        '<input value="' + $('#desc_title_ar').val() + '" class="form-control" name="desc_title_ar[]"  type="text" required >' +
                    '</div>' +
                    '<div class="col-md-5 col-sm-12">' +
                        '<label>@lang("trans.title_en")</label>' +
                        '<input value="' + $('#desc_title_en').val() + '" class="form-control" name="desc_title_en[]"  type="text" required >' +
                    '</div>' +
                    '<div class="col-md-2 col-sm-12">' +
                        '<button class="btn btn-dark mt-4 w-100" type="button">-</button>' +
                    '</div>' +
                '</div>').insertAfter(".PackageDesc .item");
                $('#desc_title_ar').val('');
                $('#desc_title_en').val('');
            }
        });
        $(document).on('click', '.btn-dark', function() {
            $(this).parent().parent().remove();
        });
        $(document).on('click', 'input[type="checkbox"]', function() {
            $(this).parent().parent().find("input[type='text']").val('');
            $(this).parent().parent().find("i").toggleClass('bg-danger-900 bg-success-900');
            $(this).parent().parent().find("i").toggleClass('fa-xmark fa-check');
            $(this).parent().parent().find("input[type='text']").prop('disabled', function(i, v) { return !v; });
        });
    </script>
@endpush
@section('content')
<form method="POST" action="{{ route('admin.packages.store') }}" enctype="multipart/form-data" data-parsley-validate novalidate>
    @csrf
    <div class="row">


        <div class="form-group col-md-6">
            <label for="title_ar">@lang('trans.title_ar')</label>
            <input type="text" name="title_ar" id="title_ar" class="form-control" required >
        </div>
        <div class="form-group col-md-6">
            <label for="title_en">@lang('trans.title_en')</label>
            <input type="text" name="title_en" id="title_en" class="form-control" required >
        </div>

        <div class="form-group col-md-6">
            <label for="price_ar">@lang('trans.price_ar')</label>
            <input type="text" name="price_ar" id="price_ar" class="form-control" required>
        </div>
        <div class="form-group col-md-6">
            <label for="price_en">@lang('trans.price_en')</label>
            <input type="text" name="price_en" id="price_en" class="form-control" required>
        </div>

        <div class="form-group col-md-6">
            <label for="price">@lang('trans.price')</label>
            <input type="number" min="0" step="0.01" name="price" id="price" class="form-control" required>
        </div>
        <div class="form-group col-md-6">
            <label for="visibility">@lang('trans.visibility')</label>
            <select class="form-control" required id="visibility" name="status">
                <option selected value="1">@lang('trans.visible')</option>
                <option value="0">@lang('trans.hidden')</option>
            </select>
        </div>

        <div class="clearfix"></div>
        <div class="text-center col-12 mx-auto  mt-3">
            <label class="control-label text-danger">
                @lang('trans.description')
            </label>
        </div>
        <div class="PackageDesc text-center col-12 mx-auto">
            <div class="row item">
                <div class="form-group  col-md-5 col-sm-12">
                    <label>@lang('trans.title_ar')</label>
                    <input type="text" placeholder="@lang('trans.title_ar')" id="desc_title_ar" class="form-control text-center">
                </div>
                <div class="form-group  col-md-5 col-sm-12">
                    <label>@lang('trans.title_en')</label>
                    <input type="text" placeholder="@lang('trans.title_en')" id="desc_title_en" class="form-control text-center">
                </div>

                <div class="form-group  col-md-2 col-sm-12">
                    <label>@lang('trans.add')</label>
                    <button id="add_desc" class="main-btn waves-effect waves-light w-100" type="button">+</button>
                </div>
            </div>
        </div>
        <div class="clearfix my-5"></div>
        <div class="col-12">
            <h2 class="control-label text-danger">
                @lang('trans.features')
            </h2>
        </div>
        @foreach ($FeatureHeader as $Header)
            @if($Header->features->count())
                <div class="clearfix"></div>
                <div class="col-12  my-1 py-3">
                    <h4 class="control-label text-danger">
                        - {{ $Header->title() }}
                    </h4>
                </div>
                <div class=" col-12 mx-auto">

                    @foreach($Header->features as $item)
                        <div class="row item my-1">
                            <div class="form-group form-check  col-md-6 col-sm-12 m-auto  border-bottom-danger">
                                <input name="feature_id[]" type="checkbox" value="{{ $item->id }}" class="form-check" style="float:left; width:10%">
                                @if($item->title() )
                                    <label class="form-check-label">{{ $item->title() }}</label>
                                @endif
                                @if($item['image'] )
                                    <img style="width: 100px" src="{{ asset($item['image']) }}" alt="" srcset="">
                                @endif
                            </div>
                            <div class="form-group  col-md-6 col-sm-12 m-auto text-center">
                                @if ( $item->type == 'text' ||  $item->type == 'icon')
                                    <input placeholder="@lang('trans.title_ar')"   {{ $item->type == 'text' ? ''  : 'hidden'}}  name="feature_title_ar[]" type="text" {{ 'disabled' }} class="form-control text-center m-3">
                                    <input placeholder="@lang('trans.title_en')"   {{ $item->type == 'text' ? ''  : 'hidden'}}  name="feature_title_en[]" type="text" {{ 'disabled' }} class="form-control text-center m-3">
                                    @if ( $item->type == 'icon')
                                        <i class="fas fa-xmark bg-danger-900  p-2 rounded-circle"></i>
                                    @endif
                                @endif
                            </div>
                        </div>
                    @endforeach
                </div>
            @endif
        @endforeach
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
