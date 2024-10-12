<?php

namespace App\Models;

class Country extends BaseModel
{
    protected $guarded = [];

    protected $withCount = ['Regions'];

    public function Regions()
    {
        return $this->hasMany(Region::class);
    }

    protected $appends = ['currancy_code'];

//    public function getCurrancyCodeAttribute()
//    {
//        return $this['currancy_code_'.lang()];
//    }

    // Accessor for currency code or symbol based on the current language
    public function getCurrancyCodeAttribute()
    {
        // Retrieve the currency code based on the current language
        $currencyCode = $this['currancy_code_en'];

        // Map currency codes to their symbols
        $symbols = [
            'EUR' => '€',
            'GBP' => '£',
            'USD' => '$',
            // Add more as needed
        ];

        // Return the symbol if it exists, otherwise return the currency code
        return $symbols[$currencyCode] ?? $currencyCode;
    }


}
