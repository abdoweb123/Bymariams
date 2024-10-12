<?php

use App\Models\Cart;
use App\Models\Category;
use App\Models\Country;
use App\Models\Delivry;
use App\Models\Payment;
use App\Models\Setting;
use App\Models\Address;
use App\Models\SocialMediaIcons;
use Illuminate\Support\Facades\Config;
use Stevebauman\Location\Facades\Location;

function format_number($number)
{
//    return (int)$number;

    return number_format(ceil($number * 10) / 10, 1, '.', '');

//     return number_format($number, Country()->decimals, '.', '');
}


function removeFirstZero($number) {
    // Convert the number to a string to manipulate it
    $numberStr = (string)$number;
    
    // Check if the first character is '0'
    if ($numberStr[0] === '0') {
        // Remove the first character
        $numberStr = substr($numberStr, 1);
    }
    
    // Convert back to a number to maintain numerical data type
    return $numberStr + 0;
}

function Location()
{
    if (! Config::get('Location')) {
        Config::set('Location', Location::get(request()->ip()));
    }

    return Config::get('Location');
}

function cart_count()
{
    if (!Config::get('cart_count')) {
        // Count only carts with non-deleted products
        $count = Cart::where('client_id', client_id())
            ->whereHas('Product', function($query) {
                $query->whereNull('deleted_at'); // Exclude soft-deleted products
            })
            ->count();

        // Set the count in configuration
        Config::set('cart_count', $count);
    }

    return Config::get('cart_count');
}


function client_id()
{
    if (auth('client')->check()) {
        return auth('client')->id();
    } else {
        if (! session()->get('client_id')) {
            session()->put('client_id', 'guest_' . getName(6));
        }

        return session()->get('client_id');
    }
}

function getName($n) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $randomString = '';
 
    for ($i = 0; $i < $n; $i++) {
        $index = rand(0, strlen($characters) - 1);
        $randomString .= $characters[$index];
    }
 
    return $randomString;
}


function Payments()
{
    if (! Config::get('Payments')) {
        Config::set('Payments', Payment::Active()->get());
    }

    return Config::get('Payments');
}

function Deliveries()
{
    if (! Config::get('Deliveries')) {
        Config::set('Deliveries', Delivry::Active()->get());
    }

    return Config::get('Deliveries');
}

function lang($lang = null)
{
    if (isset($lang)) {
        return app()->islocale($lang);
    } else {
        return app()->getlocale();
    }
}

function DT_Lang()
{
    if (lang('ar')) {
        return '//cdn.datatables.net/plug-ins/1.10.16/i18n/Arabic.json';
    } else {
        return '//cdn.datatables.net/plug-ins/1.10.16/i18n/English.json';
    }
}

function Countries()
{
    if (! Config::get('Countries')) {
        Config::set('Countries', Country::Active()->take(9)->get());
    }

    return Config::get('Countries');
}


function allCountries()
{
    if (! Config::get('allCountries')) {
        Config::set('allCountries', Country::Active()->get());
    }

    return Config::get('allCountries');
}

function Country($id = 1)
{
    if(str_contains(url()->full(), '/admin')){
        return Countries()->where('id', 1)->first();
    }
    if (session()->get('SelectedCountry')){
        return session()->get('SelectedCountry');
    }
    return Countries()->where('id', $id)->first();
}


function mainCountry($id = 1)
{
    if (session()->get('mainCountry')){
        return session()->get('mainCountry');
    }
    return Countries()->where('id', $id)->first();
}


function Settings()
{
    if (! Config::get('Settings')) {
        Config::set('Settings', Setting::Active()->get());
    }

    return Config::get('Settings');
}


function addressShipping()
{
    if (! Config::get('addressShipping')) {
        Config::set('addressShipping', Address::where('client_id',client_id())->first());
    }

    return Config::get('addressShipping');
}

function Categories()
{
    if (! Config::get('Categories')) {
        Config::set('Categories', Category::Active()->get());
    }

    return Config::get('Categories');
}


function setting($key)
{
    return Settings()->where('key', $key)->first()->value ?? null;
}
function image_path($file)
{
    if ($file && file_exists(public_path($file))) {
        return $file;
    }

    return setting('logo');
}

function SocialMediaIcons()
{
//    if (! Config::get('SocialMediaIcons')) {
//        Config::set('SocialMediaIcons', SocialMediaIcons::get());
//    }

    return SocialMediaIcons::get();
}
