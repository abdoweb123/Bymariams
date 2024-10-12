<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class UpdateCountryRequest extends BaseRequest
{
    public function rules()
    {
        return [
            'title_ar' => ['required', 'string'],
            'title_en' => ['required', 'string'],
            'country_code' => ['nullable', 'string'],
            'phone_code' => ['nullable', 'string'],
            'currancy_code' => ['nullable', 'string'],
            'currancy_value' => ['nullable', 'string'],
            'phone_length' => ['nullable', 'string'],
            'accept_orders' => ['nullable', 'string'],
            'status' => ['required', 'boolean'],
        ];
    }
}
