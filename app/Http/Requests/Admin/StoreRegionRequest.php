<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class StoreRegionRequest extends BaseRequest
{
    public function rules()
    {
        return [
            'title_ar' => ['required', 'string'],
            'title_en' => ['required', 'string'],
            'country_id' => ['required', 'exists:countries,id'],
            'status' => ['required', 'boolean'],
            'lat' => ['nullable', 'string'],
            'long' => ['nullable', 'string'],
            'delivery_cost' => ['nullable'],
        ];
    }
}
