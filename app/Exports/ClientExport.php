<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class ClientExport implements FromView
{
    protected $orders;

    public function __construct(array $orders)
    {
        $this->orders = $orders;
    }

    public function view(): View
    {
        return view('exports.ClientExport', [
            'orders' => $this->orders,
        ]);
    }
}
