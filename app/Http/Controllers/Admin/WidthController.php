<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\WidthRequest;
use App\Models\Width;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class WidthController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $countries = Width::latest();

            return DataTables::of($countries)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" href="'.route('admin.width.edit', $Model).'"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="'.route('admin.width.destroy', $Model).'">
                                    '.csrf_field().'
                                    <input name="_method" type="hidden" value="DELETE">
                                    <button type="button" class="btn btn-flat show_confirm" data-toggle="tooltip" title="Delete"><i class="fa-solid fa-eraser"></i></button>
                                </form>';

                    return $data;
                })

                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch('.$Model->id.',\'width\')" '.($Model->status ? 'checked' : '').'>';
                })
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="'.$Model->id.'">';
                })
                ->escapeColumns('action', 'checkbox', 'status')
                ->make(true);
        }

        return view('Admin.width.index');
    }

    public function create()
    {
        return view('Admin.width.create');
    }

    public function store(WidthRequest $request)
    {
        Width::latest()->create($request->validated());
        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show(Width $width)
    {
        return view('Admin.width.show', compact('width'));
    }

    public function edit(Width $width)
    {
        return view('Admin.width.edit', compact('width'));
    }

    public function update(WidthRequest $request, Width $width)
    {
        $width->update($request->validated());
        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy(Width $width)
    {
        $width->delete();
    }

}
