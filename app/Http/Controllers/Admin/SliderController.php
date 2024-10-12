<?php

namespace App\Http\Controllers\Admin;

use App\Functions\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\UpdateImageRequest;
use App\Models\Slider;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class SliderController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $Models = Slider::latest();

            return DataTables::of($Models)
                ->addColumn('action', function ($Model) {
                    return '<a href="'.route('admin.sliders.edit', ['slider' => $Model]).'"><i class="fa-solid fa-pen-to-square"></i></a>';
                })
                ->addColumn('image_lg', function ($Model) {
                    return '<a class="image-popup-no-margins" href="'.image_path($Model['image_lg']).'">
                        <img src="'.image_path($Model['image_lg']).'" style="max-height: 150px;max-width: 150px">
                    </a>';
                })
                ->addColumn('image_sm', function ($Model) {
                    return '<a class="image-popup-no-margins" href="'.image_path($Model['image_sm']).'">
                        <img src="'.image_path($Model['image_sm']).'" style="max-height: 150px;max-width: 150px">
                    </a>';
                })

                ->escapeColumns('action', 'checkbox', 'image')
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="'.$Model->id.'">';
                })
                ->toJson();
        }

        return view('Admin.sliders.index');
    }

    public function create(Request $request)
    {
        return view('Admin.sliders.create');
    }

    public function store(Request $request)
    {
        Slider::create([
            'image_sm' => Upload::UploadFile($request['image_sm'], 'Images'),
            'image_lg' => Upload::UploadFile($request['image_lg'], 'Images'),
        ]);
        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show($id)
    {
        $Image = Slider::latest()->findOrFail($id);

        return view('Admin.sliders.show', compact('Image'));
    }

    public function edit($id, Request $request)
    {
        $Image = Slider::latest()->findOrFail($id);

        return view('Admin.sliders.edit', compact('Image'));
    }

    public function update(Request $request, $id)
    {
        $Image = Slider::latest()->findOrFail($id);
        if ($request->hasFile('image_lg')) {
            Upload::deleteImage($Image->image_lg);
            $Image->update(['image_lg' => Upload::UploadFile($request['image_lg'], 'Images')]);
        } 
        if ($request->hasFile('image_sm')) {
            Upload::deleteImage($Image->image_sm);
            $Image->update(['image_sm' => Upload::UploadFile($request['image_sm'], 'Images')]);
        } 
        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy($id)
    {
        Slider::latest()->where('id', $id)->delete();
    }
}
