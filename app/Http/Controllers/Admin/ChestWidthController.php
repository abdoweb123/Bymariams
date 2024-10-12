<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\ChestWidthRequest;
use App\Models\ChestWidth;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ChestWidthController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $countries = ChestWidth::latest();

            return DataTables::of($countries)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" href="'.route('admin.chest_width.edit', $Model).'"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="'.route('admin.chest_width.destroy', $Model).'">
                                    '.csrf_field().'
                                    <input name="_method" type="hidden" value="DELETE">
                                    <button type="button" class="btn btn-flat show_confirm" data-toggle="tooltip" title="Delete"><i class="fa-solid fa-eraser"></i></button>
                                </form>';

                    return $data;
                })

                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch('.$Model->id.',\'chest_width\')" '.($Model->status ? 'checked' : '').'>';
                })
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="'.$Model->id.'">';
                })
                ->escapeColumns('action', 'checkbox', 'status')
                ->make(true);
        }

        return view('Admin.chest_width.index');
    }

    public function create()
    {
        return view('Admin.chest_width.create');
    }

    public function store(ChestWidthRequest $request)
    {
        ChestWidth::latest()->create($request->validated());
        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show(ChestWidth $chest_width)
    {
        return view('Admin.chest_width.show', compact('chest_width'));
    }

    public function edit(ChestWidth $chest_width)
    {
        return view('Admin.chest_width.edit', compact('chest_width'));
    }

    public function update(ChestWidthRequest $request, ChestWidth $chest_width)
    {
        $chest_width->update($request->validated());
        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy(ChestWidth $chest_width)
    {
        $chest_width->delete();
    }


} //end  of class
