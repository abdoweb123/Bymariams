<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class ChestWidthRequest extends BaseRequest
{
    public function rules()
    {
        return [
            'title_ar' => ['required', 'string'],
            'title_en' => ['required', 'string'],
            'status' => ['required', 'boolean'],
        ];
    }
}
