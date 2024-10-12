@extends('Admin.layout')
@section('pagetitle',__('trans.addresses'))
@section('content')

    @foreach($addresses as $address)
        <table class="table">
            <!-- Address Title Row -->
            <thead>
            <tr>
                <th colspan="6">
                    <h4>{{ __("trans.address") }}</h4>
                </th>
            </tr>
            </thead>
            <tbody>
            <!-- Country Row -->
            <tr>
                <th colspan="3">{{ __("trans.country") }}</th>
                <td colspan="3">{{ $address->country['title_'.lang()] ?? '___' }}</td>
            </tr>
            @if($address->country_code == 'BH')
                <!-- Bahrain-Specific Address Details -->
                <tr>
                    <th colspan="3">{{ __("trans.region") }}</th>
                    <td colspan="3">{{ $address->region['title_'.lang()] ?? '___' }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.block") }}</th>
                    <td colspan="3">{{ $address->block }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.road") }}</th>
                    <td colspan="3">{{ $address->road }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.building_no") }}</th>
                    <td colspan="3">{{ $address->building_no }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.floor_no") }}</th>
                    <td colspan="3">{{ $address->floor_no }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.apartment") }}</th>
                    <td colspan="3">{{ $address->apartment }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.apartmentType") }}</th>
                    <td colspan="3">{{ $address->apartmentType }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.additional_directions") }}</th>
                    <td colspan="3">{{ $address->additional_directions }}</td>
                </tr>
            @else
                <!-- Other Locations Address Details -->
                <tr>
                    <th colspan="3">{{ __("trans.city") }}</th>
                    <td colspan="3">{{ $address->city }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.address1") }}</th>
                    <td colspan="3">{{ $address->address1 }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.address2") }}</th>
                    <td colspan="3">{{ $address->address2 }}</td>
                </tr>
                <tr>
                    <th colspan="3">{{ __("trans.state") }}</th>
                    <td colspan="3">{{ $address->state }}</td>
                </tr>
            @endif
            </tbody>
        </table>
    @endforeach

{{--<div class="row">--}}
{{--    <div class="my-2 col-6 text-sm-start">--}}
{{--        <a href="{{ route('admin.addresses.create', $client) }}" class="main-btn" disabled>@lang('trans.add_new')</a>--}}
{{--    </div>--}}
{{--    <div class="my-2 col-6 text-sm-end">--}}
{{--        <button type="button" id="DeleteSelected" onclick="DeleteSelected('addresses')" class="btn btn-dark" disabled>@lang('trans.Delete_Selected')</button>--}}
{{--    </div>--}}
{{--</div>--}}
{{--<table class="table" id="DataTable">--}}
{{--    <thead>--}}
{{--        <tr>--}}
{{--            <th><input type="checkbox" id="ToggleSelectAll" class="main-btn"></th>--}}
{{--            <th>#</th>--}}
{{--            <th style="text-align:center;">@lang('trans.client')</th>--}}
{{--            <th style="text-align:center;">@lang('trans.region')</th>--}}
{{--            <th style="text-align:center;">@lang('trans.email')</th>--}}
{{--            <th></th>--}}
{{--        </tr>--}}
{{--    </thead>--}}
{{--    <tbody>--}}

{{--    </tbody>--}}
{{--</table>--}}
@endsection



{{--@push('js')--}}
{{--    <script type="text/javascript">--}}
{{--        $(function() {--}}

{{--            var table = $('#DataTable').DataTable({--}}
{{--                processing: true--}}
{{--                , serverSide: true--}}
{{--                , oLanguage: {--}}
{{--                    sUrl: '{{ DT_Lang() }}'--}}
{{--                }--}}
{{--                , ajax: "{{ route('admin.addresses.index', $client) }}"--}}
{{--                , dom: 'Blfrtip'--}}
{{--                , buttons: [--}}
{{--                    {--}}
{{--                        extend: 'copy',--}}
{{--                        exportOptions: {--}}
{{--                            columns: ':visible'--}}
{{--                        }--}}
{{--                    },--}}
{{--                    {--}}
{{--                        extend: 'excel',--}}
{{--                        exportOptions: {--}}
{{--                            columns: ':visible'--}}
{{--                        }--}}
{{--                    },--}}
{{--                    {--}}
{{--                        extend: 'csv',--}}
{{--                        exportOptions: {--}}
{{--                            columns: ':visible'--}}
{{--                        }--}}
{{--                    },--}}
{{--                    {--}}
{{--                        extend: 'pdf',--}}
{{--                        exportOptions: {--}}
{{--                            columns: ':visible'--}}
{{--                        }--}}
{{--                    },--}}
{{--                    {--}}
{{--                        extend: 'print',--}}
{{--                        exportOptions: {--}}
{{--                            stripHtml : false,--}}
{{--                            columns: ':visible'--}}
{{--                        }--}}
{{--                    },--}}
{{--                    'colvis'--}}
{{--                ]--}}
{{--                , lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]]--}}
{{--                , columns: [--}}
{{--                    {--}}
{{--                        data: 'checkbox',--}}
{{--                        orderable: false,--}}
{{--                        searchable: false--}}
{{--                    }--}}
{{--                    ,{--}}
{{--                        data: 'DT_RowIndex',--}}
{{--                        orderable: false,--}}
{{--                        searchable: false--}}
{{--                    }--}}
{{--                    , {--}}
{{--                        data: 'client'--}}
{{--                        , name: 'client'--}}
{{--                    }--}}
{{--                    , {--}}
{{--                        data: 'region'--}}
{{--                        , name: 'region'--}}
{{--                    }--}}
{{--                    , {--}}
{{--                        data: 'email'--}}
{{--                        , name: 'email'--}}
{{--                    }--}}
{{--                    , {--}}
{{--                        data: 'action'--}}
{{--                        , name: 'action'--}}
{{--                        , orderable: false--}}
{{--                    }]--}}
{{--            });--}}

{{--        });--}}

{{--    </script>--}}
{{--@endpush--}}
