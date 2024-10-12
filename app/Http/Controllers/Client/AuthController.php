<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Client;
use App\Models\Country;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $Country = Country::find($request->country_id);

        $phoneCode = $Country?->phone_code;

        if (auth('client')->attempt($request->only('phone', 'password') + ['phone_code'=>$phoneCode])) {
            toast(__('trans.loginSuccessfully'), 'success');

            $redirect = session()->get('redirect');
            if ($redirect) {
                session()->forget('redirect');
                return redirect()->away($redirect['route']);
            }else{
                return redirect()->route('client.profile');
            }
        }
        toast(__('trans.emailPasswordIncorrect'), 'error');

        return redirect()->back();
    }

    public function register(Request $request)
    {
        $Country = Country::find($request->country_id);
        $client_id = client_id();
        $client = Client::create([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'phone' => $request->get('phone'),
            'phone_code' => $Country->phone_code,
            'code' => $Country->country_code,
            'country_code' => $Country->country_code,
            'password' => bcrypt($request->get('password')),
        ]);
        auth('client')->login($client);
        toast(__('trans.profileCompleted'), 'success');

        return redirect()->route('client.profile');
    }

    public function profile(Request $request)
    {
        $client_id = client_id();
        Client::where('id', auth('client')->id())->update([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'password' => bcrypt($request->get('password')),
        ]);
        toast(__('trans.updatedSuccessfully'), 'success');

        return redirect()->route('client.profile');
    }

    public function forget(Request $request)
    {
//        return $request;
        $Client = Client::where('phone', $request->phone)->first();
        $Client->password = bcrypt($request->get('password'));
        $Client->save();

        auth('client')->login($Client);
        toast(__('trans.loginSuccessfully'), 'success');

        return redirect()->route('client.home');
    }

    public function logout()
    {
        if (auth('client')->check()) {
            auth('client')->logout();
        }
        toast(__('trans.logoutSuccessfully'), 'success');

        return redirect()->route('client.home');
    }
}
