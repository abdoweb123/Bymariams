<?php

namespace App\Models;

class OrderProduct extends BaseModel
{
    protected $guarded = [];

    protected $with = ['Product', 'Size', 'Color'];

    protected $table = 'order_product';

    public function Product()
    {
        return $this->belongsTo(Product::class)->withTrashed();
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
        return $this->belongsTo(Width::class, 'width_id');
    }

    public function chestWidth()
    {
        return $this->belongsTo(ChestWidth::class,'chest_width_id');
    }

    public function RandomImage()
    {
        return $this->Product->Images->first()->image;
    }
}
