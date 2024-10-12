<?php

namespace App\Models;

class Cart extends BaseModel
{
    protected $guarded = [];

    protected $table = 'cart';

    public function Product()
    {
        return $this->belongsTo(Product::class,'product_id');
    }

    public function Size()
    {
        return $this->belongsTo(Size::class);
    }

    public function Color()
    {
        return $this->belongsTo(Color::class);
    }

    public function width()
    {
        return $this->belongsTo(Width::class,'width_id');
    }

    public function chestWidth()
    {
        return $this->belongsTo(ChestWidth::class,'chest_width_id');
    }

} //end of class
