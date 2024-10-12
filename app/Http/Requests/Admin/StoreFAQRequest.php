<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class StoreFAQRequest extends BaseRequest
{
    public function rules()
    {
        return [
            'question_ar' => ['required', 'string'],
            'question_en' => ['required', 'string'],

            'answer_ar' => ['required', 'string'],
            'answer_en' => ['required', 'string'],

            'status' => ['required', 'boolean'],
        ];
    }
}
