<?php

namespace App\Models;

class ProductQuantity extends BaseModel
{
    protected $table = 'product_quantity';

    protected $guarded = [];

    public function Product()
    {
        return $this->belongsTo(Product::class);
    }

    public function Color()
    {
        return $this->belongsTo(Color::class);
    }
    public function Size()
    {
        return $this->belongsTo(Size::class);
    }

}
