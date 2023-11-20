<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Rating;
use App\Models\UserFavourite;
use Illuminate\Http\Request;
use App\User;

class AdminUserController extends Controller
{
    public function index()
    {
        $users = User::paginate(10);

        $viewData = [
            'users' => $users
        ];

        return view('admin.user.index', $viewData);
    }

    public function delete($id)
    {
        $user = User::find($id);
        if ($user) $user->delete();
        $rating=Rating::where('r_user_id',$id);
        $rating->delete();
        $favourite=UserFavourite::where('uf_user_id',$id);
        $favourite->delete();
        return redirect()->back();
    }
}
