@extends('Admin.layout')
@section('pagetitle', __('trans.deliveries'))
@section('content')

<table class="table table-bordered data-table" id="DataTable">
    <thead>
        <tr>
            <th>#</th>
            <th>@lang('trans.title_ar')</th>
            <th>@lang('trans.title_en')</th>
            <th></th>
        </tr>
    </thead>
    <tbody>

    </tbody>
</table>
@endsection


@push('js')
    <script type="text/javascript">
        $(function() {

            var table = $('#DataTable').DataTable({
                processing: true
                , serverSide: true
                , oLanguage: {
                    sUrl: '{{ DT_Lang() }}'
                }
                , ajax: "{{ route('admin.deliveries.index') }}"
                , dom: 'Blfrtip'
                , buttons: [
                    {
                        extend: 'copy',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'excel',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'csv',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'pdf',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'print',
                        exportOptions: {
                            stripHtml : false,
                            columns: ':visible'
                        }
                    },
                    'colvis'
                ]
                , lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]]
                , columns: [
                    {
                        data: 'DT_RowIndex',
                        orderable: false,
                        searchable: false
                    }
                    , {
                        data: 'title_ar'
                        , name: 'title_ar'
                    }
                    , {
                        data: 'title_en'
                        , name: 'title_en'
                    }
                    , {
                        data: 'action'
                        , name: 'action',

                        orderable: false
                    }]
            });

        });
    </script>
@endpush
