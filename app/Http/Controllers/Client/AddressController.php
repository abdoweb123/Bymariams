<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Address;
use App\Models\Country;
use App\Models\Region;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Stevebauman\Location\Facades\Location;

class AddressController extends Controller
{
    public function index()
    {
        return redirect()->route('client.profile');
    }

    public function create()
    {
        $Location = Location::get(request()->ip());

        return view('Client.address.create', [
            'lat' => $Location ? $Location->latitude : 0,
            'long' => $Location ? $Location->longitude : 0,
        ]);
    }

    public function store(Request $request)
    {
        $countryCode = Country::find($request->country_id)->country_code;

        Address::create([
            'client_id' => auth('client')->id(),
            'country_code' => $countryCode,
            'address1' => $request->address1,
            'address2' => $request->address2,
            'city' => $request->city,
            'state' => $request->state,
            'region_id' => $request->region_id,
            'block' => $request->block,
            'road' => $request->road,
            'building_no' => $request->building_no,
            'floor_no' => $request->floor_no,
            'apartment' => $request->apartment,
            'apartmentType' => $request->apartmentType,
            'additional_directions' => $request->additional_directions
        ]);

        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->route('client.profile');
    }

    public function edit($id)
    {
        $address = Address::findOrFail($id);
        $Location = Location::get(request()->ip());

        return view('Client.address.edit', [
            'address' => $address,
            'lat' => $Location ? $Location->latitude : 0,
            'long' => $Location ? $Location->longitude : 0,
        ]);
    }

    public function update(Request $request, $id)
    {
        // Fetch the country code from the selected country (assuming you have a way to get it)
        $countryCode = Country::find($request->country_id)->country_code;

        // Update the Address record with the provided fields
        Address::where('id', $id)->update([
            'client_id' => auth('client')->id(),
            'country_code' => $countryCode,
            'address1' => $request->address1,
            'address2' => $request->address2,
            'city' => $request->city,
            'state' => $request->state,
            'region_id' => $request->region_id,
            'block' => $request->block,
            'road' => $request->road,
            'building_no' => $request->building_no,
            'floor_no' => $request->floor_no,
            'apartment' => $request->apartment,
            'apartmentType' => $request->apartmentType,
            'additional_directions' => $request->additional_directions,
        ]);


        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->route('client.profile', 'address');
    }

    public function destroy($id)
    {
        Address::where('id', $id)->delete();
        alert()->success(__('trans.DeletedSuccessfully'));

        return redirect()->back();
    }

    // Controller method to fetch regions for country by ajax
    public function fetchRegionsForCountry(Request $request)
    {
        // Assuming you have a Region model
        $regions = Region::where('country_id', 1)->select('id','title_'.lang().' as title')->get();

        return response()->json(['regions' => $regions]);
    }


}
