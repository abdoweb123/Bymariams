@extends('Admin.layout')

@section('href',  route('admin.products.index'))
@section('href-title', __('trans.products'))
@section('pagetitle',  $Product->title())
@section('content')


@php($HasColors = $Product->Colors->count() > 0)
<form action="{{ route('admin.products.update-quantity',$Product) }}" method="POST">
    @csrf
    @method('PUT')
    
    <table class="table">
        <thead>
            <th>{{ __('trans.size') }}</th>
            @if($HasColors)
            <th>{{ __('trans.color') }}</th>
            @endif
            <th>{{ __('trans.Quantity') }}</th>
        </thead>
        <tbody class="text-center">
            @php($Quantity = $Product->Quantity)
            @foreach ($Product->Sizes as $Size)
                @if($HasColors)
                    @foreach ($Product->Colors as $Color)
                        <tr>
                            <td>{{ $Size->title() }}</td>
                            <td>
                                <div class="row" style="max-width: 200px;margin: auto;">
                                    <div class="col">
                                        {{ $Color->title() }}
                                    </div>
                                    <div class="col">
                                        <i style="border: 1px solid #000;border-radius: 50%;padding: 4px 3px 3px 3px; color:{{ $Color->hexa }}; " class="fa-solid fa-circle mx-2"></i>
                                    </div>
                                </div>
                            </td>
                            @php($Item = $Quantity->where('size_id',$Size->id)->where('color_id',$Color->id)->first())
                            <td>
                                <input type="text" name="item[{{ $Size->id }}][{{ $Color->id }}][quantity]" value="{{ $Item?->quantity ?? 0 }}" placeholder="@lang('trans.quantity')" class="form-control" style="max-width: 200px;margin: auto;">
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td>{{ $Size->title() }}</td>
                        @php($Item = $Quantity->where('size_id',$Size->id)->first())
                        <td>
                            <input type="text" name="item[{{ $Size->id }}][0][quantity]" value="{{ $Item?->quantity ?? 0 }}" placeholder="@lang('trans.quantity')" class="form-control" style="max-width: 200px;margin: auto;">
                        </td>
                    </tr>
                @endif
            @endforeach
    
        </tbody>
    </table>
    
                
    <div class="clearfix"></div>
    <div class="col-12 my-4">
        <div class="button-group text-center">
            <button type="submit" class="main-btn btn-hover w-100 text-center">
                {{ __('trans.Submit') }}
            </button>
        </div>
    </div>
</form>

@endsection