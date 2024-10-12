@extends('Admin.layout')
@section('pagetitle', __('trans.sliders'))
@section('content')
<div class="row">
    <div class="col text-center">
        <img loading="lazy" src="{{ $Image->image_sm }}" class="img-fluid rounded m-auto" style="max-width:200px" alt="image_sm">
    </div>
    <div class="col text-center">
        <img loading="lazy" src="{{ $Image->image_lg }}" class="img-fluid rounded m-auto" style="max-width:200px" alt="image_lg">
    </div>

</div>
<form method="POST" action="{{ route('admin.sliders.update',['slider' => $Image ]) }}" enctype="multipart/form-data" data-parsley-validate novalidate>
    @csrf
    @method('PUT')
    <div class="row">
        <div class="form-group col-md-6">
            <label for="image_sm">@lang('trans.image_sm')</label>
            <label class="file-input btn btn-block btn-secondary btn-file w-100">
                @lang("trans.Browse")
                <input accept="image/*" type="file" name="image_sm" id="image_sm">
            </label>
        </div>
        <div class="form-group col-md-6">
            <label for="image_lg">@lang('trans.image_lg')</label>
            <label class="file-input btn btn-block btn-secondary btn-file w-100">
                @lang("trans.Browse")
                <input accept="image/*" type="file" name="image_lg" id="image_lg">
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
