<?php

use App\Functions\WhatsApp;
use App\Http\Controllers\webController;
use App\Models\Order;
use Illuminate\Support\Facades\Route;

Route::any('get-ip-details', [webController::class, 'ip'])->name('ip');
Route::any('switch', [webController::class, 'switch'])->name('switch');
Route::any('reorder', [webController::class, 'reorder'])->name('reorder');
Route::any('language/{locale}', [webController::class, 'lang'])->name('lang');
Route::any('artisan/{command}', [webController::class, 'artisan'])->name('artisan');
Route::any('sendotp/{phone_code}/{phone}/', [webController::class, 'SendOTP'])->name('SendOTP');
Route::any('removeids', [webController::class, 'RemoveIds'])->name('RemoveIds');



Route::any('test_order_whatsapp/{order_id}', function ($order_id){
    $Order = Order::find($order_id);
    WhatsApp::SendOrder($Order);
    
});