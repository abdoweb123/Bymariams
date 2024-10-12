<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends BaseModel
{
    use SoftDeletes;

    protected $guarded = [];

    protected $with = ['Images'];

    public function Rates()
    {
        return $this->hasMany(ProductReview::class);
    }
    
    
    public function Quantity()
    {
        return $this->hasMany(ProductQuantity::class);
    }

    public function Categories()
    {
        return $this->belongsToMany(Category::class, 'product_categories');
    }

    public function Orders()
    {
        return $this->belongsToMany(Order::class, 'order_products');
    }

    public function Sizes()
    {
        return $this->belongsToMany(Size::class, 'product_size');
    }

    public function Colors()
    {
        return $this->belongsToMany(Color::class, 'product_color');
    }

    public function width()
    {
        return $this->belongsToMany(Width::class, 'product_width');
    }

    public function chestWidth()
    {
        return $this->belongsToMany(ChestWidth::class, 'product_chest_width');
    }

    public function RandomImage()
    {
        return $this->Images->where('main', 1)->count() > 0 ? $this->Images->where('main', 1)->first()->image : $this->Images->first()?->image;
    }

    public function HasDiscount()
    {
        return $this->from <= now() && $this->to >= now();
    }

    public static function boot()
    {
        parent::boot();
        static::created(function ($model) {
            $model->arrangement = $model->id;
            $model->save();
        });
    }

    public function Images()
    {
        return $this->hasMany(ProductImage::class)->orderBy('id', 'desc');
    }

    public function CalcPrice()
    {
        if ($this->discount && $this->from < now() && $this->to > now()) {
            return format_number(($this->price - ($this->price / 100 * $this->discount)) * Country()->currancy_value, Country()->decimals, '.', '');
        } else {
            return format_number($this->price * Country()->currancy_value, Country()->decimals, '.', '');
        }
    }

    public function Price()
    {
        return format_number($this->price * Country()->currancy_value);
    }

    public function mainPrice()
    {
        return $this->price;
    }

    public function CalcMainPrice()
    {
        if ($this->discount && $this->from < now() && $this->to > now()) {
            return ($this->price - ($this->price / 100 * $this->discount));
        } else {
            return $this->price;
        }
    }


} //end of class
