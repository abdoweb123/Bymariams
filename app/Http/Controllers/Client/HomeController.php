<?php

namespace App\Http\Controllers\Client;

use App\Functions\WhatsApp;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Payment\TapController;
use App\Mail\OrderSummary;
use App\Models\Address;
use App\Models\Cart;
use App\Models\Category;
use App\Models\Client;
use App\Models\Color;
use App\Models\Contact;
use App\Models\Country;
use App\Models\Order;
use App\Models\Product;
use App\Models\Size;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Stevebauman\Location\Facades\Location;

class HomeController extends Controller
{
    public function SelectedCountry($id,Request $request)
    {
        session(['SelectedCountry' => Countries()->where('id', $id)->first()]);
        return back();
    }
    public function home(Request $request)
    {
        $Sliders = Slider::get();
        $Popular = Product::Active()->where('popular', 1)->get();
        $MostSelling = Product::Active()->where('most_selling', 1)->get();
        $Offers = Product::Active()->where('from', '<', now())->where('to', '>', now())->get();

        return view('Client.home', compact('Sliders', 'MostSelling', 'Popular', 'Offers'));
    }


    public function shop(Request $request)
    {
//        return request('colors');

        $Categories = Category::Active()->get();
        $Sizes = Size::Active()->get();
        $Colors = Color::Active()->get();
        $Products = Product::Active()

            ->whereHas('Categories', function ($query) {
                if (count((array) request('categories')) || request('category_id')) {
                    return $query->whereIn('categories.id', (array) request('categories') + [request('category_id')]);
                }
            })
            ->whereHas('Colors', function ($query) {
                if (count((array) request('colors'))) {
                    return $query->whereIn('color_id', request('colors'));
                }
            })
            ->whereHas('Sizes', function ($query) {
                if (count((array) request('sizes'))) {
                    return $query->whereIn('size_id', request('sizes'));
                }
            })

            ->when(request('max_price'), function ($query) {
                return $query->where('price', '>=', request('max_price'));
            })
            ->when(request('min_price'), function ($query) {
                return $query->where('price', '<=', request('min_price'));
            })
            ->when(request('search'), function ($query) {
                $searchTerm = request('search');

                return $query->where('title_ar', 'LIKE', "%{$searchTerm}%")->orWhere('title_en', 'LIKE', "%{$searchTerm}%")->where('desc_ar', 'LIKE', "%{$searchTerm}%")->orWhere('desc_en', 'LIKE', "%{$searchTerm}%")->orWhere('code', 'LIKE', "%{$searchTerm}%");
            });

//        return $Products->count();


        // This code to show even number of products per page
        $totalProducts = $Products->count(); // Total number of products

        if ($totalProducts > 0){
            // Desired number of products per page (this does not have to be 24)
            $perPage = min($totalProducts, 10); // Change this to any even number you want per page

            // Calculate the limit to ensure it's even
            $limit = ($perPage % 2 === 0) ? $perPage : $perPage - 1; // Ensure limit is even

            // Get the current page from the request
            $currentPage = request()->get('page', 1); // Current page number

            // Calculate how many products to display on the current page
            if ($currentPage < ceil($totalProducts / $limit)) {
                // For pages that are not the last, show the full limit
                $Products = $Products
                    ->skip(($currentPage - 1) * $limit)
                    ->take($limit)
                    ->get();
            } else {
                // For the last page, determine how many products are left
                $remainingProducts = $totalProducts - ($limit * ($currentPage - 1)); // Remaining products for the last page

                if ($remainingProducts === 1) {
                    // If there is only 1 product left, show it alone on the last page
                    $Products = $Products
                        ->skip(($currentPage - 1) * $limit)
                        ->take(1) // Show only the remaining product
                        ->get();
                } else {
                    // Show the remaining products, ensuring they are even
                    $Products = $Products
                        ->skip(($currentPage - 1) * $limit)
                        ->take($remainingProducts - ($remainingProducts % 2)) // Adjust to the nearest even number
                        ->get();
                }
            }

            // Create a paginator
            $paginatedProducts = new \Illuminate\Pagination\LengthAwarePaginator(
                $Products, // Items for the current page
                $totalProducts, // Total number of items
                $limit, // Number of items per page
                $currentPage, // Current page
                ['path' => request()->url(), 'query' => request()->query()] // Keep query params
            );

            // Finally, use the $Products variable to display results
            $Products = $paginatedProducts;
        }
        else{
            $Products = $Products->paginate(1);
        }

        return view('Client.shop', compact('Products', 'Categories', 'Colors', 'Sizes'));
    }

    public function product($id, Request $request)
    {
        $Product = Product::Active()->Active()->where('id', $id)->firstorfail();
        $RelatedProducts = Product::Active()->whereNot('id', $Product->id)->orderBy('title_'.lang())->get();

        return view('Client.product', compact('Product', 'RelatedProducts'));
    }

    public function contact(Request $request)
    {
        Contact::create($request->all());
        toast(__('trans.We Will Contact You as soon as possible'), 'success');

        return back();
    }

    public function about(Request $request)
    {
        return view('Client.about');
    }

    public function AddToCart(Request $request)
    {
        $Cart = Cart::where([
            'client_id' => client_id(),
            'product_id' => $request->product_id,
            'size_id' => $request->size_id,
            'color_id' => $request->color_id,
            'width_id' => $request->width_id,
            'chest_width_id' => $request->chest_width_id,
            'Quantity' => $request->quantity,
            'note' => $request->note,
        ])->first();
        if($Cart){
            Cart::where('id', $Cart->id)->increment('quantity', $request->quantity);
        }else{
            Cart::create([
                'client_id' => client_id(),
                'product_id' => $request->product_id,
                'size_id' => $request->size_id,
                'color_id' => $request->color_id,
                'width_id' => $request->width_id,
                'chest_width_id' => $request->chest_width_id,
                'Quantity' => $request->quantity,
                'note' => $request->note,
            ]);
        }

        toast(__('trans.addedSuccessfully'), 'success');

        return redirect(route('client.cart'));
    }

    public function confirm(Request $request)
    {
        $Cart = Cart::where('client_id', client_id())->with('Product', 'Color', 'Size')->get();
        $Products = Product::whereIn('id',$Cart->pluck('product_id'))->get();
        $Location = Location::get(request()->ip());
        $Addresses = Address::where('client_id',client_id())->get();

        return view('Client.confirm', [
            'Cart' => $Cart,
            'Products' => $Products,
            'Addresses' => $Addresses,
            'lat' => $Location ? $Location->latitude : 0,
            'long' => $Location ? $Location->longitude : 0,
        ]);
    }

    public function cart()
    {
        // First, retrieve the cart items
        $Cart = Cart::where('client_id', client_id())
            ->whereHas('Product', function($query) {
                $query->whereNull('deleted_at'); // Ensure only non-deleted products are included
            })
            ->with('Product', 'Color', 'Size')
            ->get();

        // Fetch the corresponding products (non-soft-deleted)
        $Products = Product::whereIn('id', $Cart->pluck('product_id'))->get();

        return view('Client.cart', compact('Cart', 'Products'));
    }

    public function deleteitem()
    {
        Cart::where('client_id', client_id())->where('id', request('id'))->delete();
        $cart_count = Cart::where('client_id', client_id())->count();

        return response()->json([
            'success' => true,
            'type' => 'success',
            'cart_count' => $cart_count,
            'message' => __('trans.DeletedSuccessfully'),
        ]);
    }

    public function minus()
    {
        if (request('count')) {
            Cart::where('client_id', client_id())->where('id', request('id'))->update(['quantity' => request('count')]);
            $cart_count = Cart::where('client_id', client_id())->count();

            return response()->json([
                'success' => true,
                'type' => 'success',
                'cart_count' => $cart_count,
                'message' => __('trans.updatedSuccessfully'),
            ]);
        } else {
            $cart_count = Cart::where('client_id', client_id())->count();

            return response()->json([
                'success' => false,
                'type' => 'error',
                'cart_count' => $cart_count,
                'message' => __('trans.sorry_there_was_an_error'),
            ]);
        }
    }

    public function plus()
    {
        $CartItem = Cart::where('client_id', client_id())->where('id', request('id'))->increment('quantity', 1);
        $cart_count = Cart::where('client_id', client_id())->count();

        return response()->json([
            'success' => true,
            'type' => 'success',
            'cart_count' => $cart_count,
            'message' => __('trans.updatedSuccessfully'),
        ]);
    }

    public function submit($delivery_id, Request $request)
    {
//        return $request->phone_code;

        if (auth('client')->check()) {
            $Client = auth('client')->user();
        } else {
            $phone = removeFirstZero($request->phone);
            $Client = Client::where('phone', $phone)->first();
            if (! $Client) {
                $Client = Client::create([
                    'name' => $request->name,
                    'email' => $request->email,
                    'phone' => $phone,
                    'phone_code' => $request->phone_code,
                    'country_code' => $request->phone_code,
                    'code' => $request->phone_code,
                    'password' => Hash::make(Str::random(10)),
                ]);
            }
        }

        if ($delivery_id == 1) {
            $Address = Address::where('id',$request->address_id)->first();
            if (!$Address) {
                $country = Country::query()->find($request->country_id);

                $Address = Address::create([
                    'client_id' => $Client->id,
                    'country_code' => $country->country_code,
                    'lat' => $request->lat,
                    'long' => $request->long,
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
            }
//            else{
//                $Address = Address::create([
//                    'client_id' => $Client->id,
//                    'country_code' => $request->country_code,
//                    'lat' => $request->lat,
//                    'long' => $request->long,
//                    'address1' => $request->address1,
//                    'address2' => $request->address2,
//                    'city' => $request->city,
//                    'state' => $request->state,
//                    'region_id' => $request->region_id,
//                    'block' => $request->block,
//                    'road' => $request->road,
//                    'building_no' => $request->building_no,
//                    'floor_no' => $request->floor_no,
//                    'apartment' => $request->apartment,
//                    'apartmentType' => $request->apartmentType,
//                    'additional_directions' => $request->additional_directions
//                ]);
//            }
        } else {
            $Address = null;
        }


        $Cart = Cart::where('client_id', client_id())->with('Product', 'Color')->get();
        $sub_total = 0;
        $sub_total_exclusive_vat = 0;
        $discount = 0;

        $Products = Product::whereIn('id',$Cart->pluck('product_id'))->get();
        foreach ($Cart as $key => $CartItem) {
            $Product = $Products->where('id',$CartItem->product_id)->first();
            $sub_total += ($Product->CalcMainPrice()) * $CartItem->quantity;
            $discount += ($Product->mainPrice() - $Product->CalcMainPrice()) * $CartItem->quantity;
            if ($Product->VAT == 'exclusive') {
                $sub_total_exclusive_vat += ($Product->CalcMainPrice()) * $CartItem->quantity;
            }
        }

        $vat = $sub_total_exclusive_vat / 100 * setting('VAT');
        $delivery_cost = $request->delivery_cost / Country()->currancy_value;
//        $delivery_cost = 0;
//        if ($sub_total > 0) {

            $Order = Order::create([
                'client_id' => $Client->id,
                'delivery_id' => $delivery_id,
                'address_id' => $Address ? $Address->id : null,
                'payment_id' => $request->payment_id,
                'status' => $request->payment_id > 1 ? 5 : 0,
                'follow' => 0,

                'sub_total' => format_number($sub_total),
                'discount' => format_number($discount),
                'discount_percentage' => 0,
                'vat' => format_number($vat),
                'vat_percentage' => setting('VAT'),
                'coupon' => 0,
                'coupon_percentage' => 0,
                'charge_cost' => format_number($delivery_cost),
                'net_total' => format_number($sub_total + $vat + $delivery_cost),

            ]);

            foreach ($Cart as $key => $CartItem) {
                $Product = $Products->where('id',$CartItem->product_id)->first();
                $ProPrice = ($Product->CalcMainPrice());

                $OrderProduct = $Order->OrderProducts()->create([
                    'product_id' => $Product->id,
                    'size_id' => $CartItem->size_id > 0 ? $CartItem->size_id : null,
                    'color_id' => $CartItem->color_id > 0 ? $CartItem->color_id : null,
                    'width_id' => $CartItem->width_id > 0 ? $CartItem->width_id : null,
                    'chest_width_id' => $CartItem->chest_width_id > 0 ? $CartItem->chest_width_id : null,
                    'price' => $ProPrice,
                    'quantity' => $CartItem->quantity,
                    'total' => $ProPrice * $CartItem->quantity,
                    'note' => $CartItem->note,
                ]);

                if ($request->payment_id == 1) {
                    $CartItem->delete();
                }
            }

            if ($request->payment_id == 1) {

                WhatsApp::SendOrder($Order);
                try {
                    Mail::to(['apps@emcan-group.com', setting('email'), $Client->email])->send(new OrderSummary($Order));
                } catch (\Throwable $th) {
                }
                alert()->success(__('trans.order_added_successfully'));

                return redirect()->route('client.success',$Order->id);
            } else {

                $TapController = new TapController();
                return redirect()->away($TapController->VerifyTapTransaction($Order->id));
            }
//        }

        return redirect()->route('client.home');
    }

    
    public function success($id, Request $request)
    {
        $Order = Order::findorfail($id);
        return view('Client.success',compact('Order'));
    }

    public function washList(Request $request)
    {
        $Client = auth('client')->user();
        $Products = $Client->WashList()
        ->paginate(25);
        return view('Client.washList',compact('Products'));
    }
    public function ToggleFav(Request $request)
    {
        $Client = auth('client')->user();
        if ($Client) {
            if ($Client->WashList()->where('product_id',$request->id)->count()) {
                $Client->WashList()->detach($request->product_id);
            }else{
                $Client->WashList()->attach($request->product_id);
            }
        }else{
            $washList = session()->get('washList') ?? [];
            if($washList){
                if (in_array($request->product_id, $washList)) {
                    unset($washList[array_search($request->product_id,$washList)]);
                }else{
                    $washList[] = $request->product_id;
                }
            }else{
                $washList[] = $request->product_id;
            }

            session()->put('washList',$washList);
        }
        
    }

}
