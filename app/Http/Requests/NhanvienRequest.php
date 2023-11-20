<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NhanvienRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => 'required|max:190|min:3|unique:admins,email,'.$this->id,
            'phone'=>'max:15|min:10|unique:admins,phone,'.$this->id
        ];
    }
    public function messages()
    {
        return [
            'email.unique'   => 'Tài khoản đã tồn tại',
            'phone.unique'   =>'Số điện thoại đã tồn tại',
        ];
    }
}
