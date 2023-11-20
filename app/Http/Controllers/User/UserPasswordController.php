<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequestPassword;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class UserPasswordController extends Controller
{
    public function updatePassword()
    {
        return view('user.update_pw');
    }
    public function SaveUpdatePassword(RequestPassword $requestPassword)
    {
    if(!empty(get_data_user('web','password')))
    {
        if (Hash::check($requestPassword->password_old,get_data_user('web','password')))
		{
			$user = User::find(get_data_user('web'));
			$user->password = bcrypt($requestPassword->password);
			$user->save();
			
			\Session::flash('toastr', [
                'type'    => 'success',
                'message' => 'Cập nhật thành công'
            ]);
            return redirect()->back();
		}
        else
        {
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Mật khẩu không chính xác'
            ]);
            return redirect()->back();
        }
    }
    else
        {
            $user = User::find(get_data_user('web'));
            $user->password = bcrypt($requestPassword->password);
            $user->save();
    
            \Session::flash('toastr', [
                'type'    => 'success',
                'message' => 'Cập nhật thành công'
            ]);

            return redirect()->back();
        
        
        }      
    }
}
