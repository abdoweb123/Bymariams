<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreAddressRequest;
use App\Http\Requests\Admin\UpdateAddressRequest;
use App\Models\Address;
use App\Models\Client;
use App\Models\Region;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class AddressController extends Controller
{

//    public function index(Request $request, Client $client)
//    {
//        if ($request->ajax()) {
//            $Addresss = Address::where('client_id', $client->id)->with('client', 'region')->get(); // Adjust according to your model relationships
//
//            return Datatables::of($Addresss)
//                ->addColumn('action', function ($Model) {
//                    $data = '';
////                    $data .= '<a style="color: #000;" href="'.route('admin.addresses.show', $Model).'"><i class="fas fa-eye"></i></a>';                    $data .= '<a style="color: #000;" href="'.route('admin.clients.edit', $client).'"><i class="fa-solid fa-pen-to-square"></i></a>';
//
//
//                    return $data;
//                })
//                ->addColumn('checkbox', function ($client) {
//                    return '<input type="checkbox" class="DTcheckbox" value="'.$client->id.'">';
//                })
//                ->addIndexColumn()
//                ->make(true);
//        }
//
//        return view('Admin.clients.index');
//    }

    public function index(Request $request, Client $client)
    {
        $addresses = $client->addresses()->get();

        return view('Admin.addresses.index', compact('client','addresses'));
    }



    public function create(Client $client)
    {
        $regions = Region::get();

        return view('Admin.addresses.create', compact('regions', 'client'));
    }

    public function store(StoreAddressRequest $request)
    {
        Address::create($request->validated());
        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show(Address $address)
    {
        return view('Admin.addresses.show', compact('address'));
    }

    public function edit(Address $address)
    {
        $regions = Region::get();

        return view('Admin.addresses.edit', compact('address', 'regions'));
    }

    public function udpate(UpdateAddressRequest $request, Address $address)
    {
        $address->update($request->validated());
        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy(Address $address)
    {
        $address->delete();
    }
}
