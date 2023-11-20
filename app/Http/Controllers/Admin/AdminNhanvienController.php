<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\NhanvienRequest;
use App\Models\Admin;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminNhanvienController extends Controller
{
    public function nhanvien()
    {
        $boss=Admin::where('level',1)->orderBy('id','ASC')->get();
        $nhanvien=Admin::where('level',0)->orderBy('id','ASC')->get();
        return view('admin.nhanvien.index',compact('boss','nhanvien'));
    }
    public function create()
    {
        return view('admin.nhanvien.create');
    }
    public function store(NhanvienRequest $request)
    {
        
        $data               = $request->except('_token','avatar');
        $data['password']   =  Hash::make($data['password']);
        $data['created_at'] = Carbon::now();
        if ($request->avatar) {
            $image = upload_image('avatar');
            if ($image['code'] == 1) 
                $data['avatar'] = $image['name'];
        } 
        
        $id = Admin::insertGetId($data);

        return redirect()->route('admin.nhanvien.index');
    }
    public function delete($id)
    {
        $nhanvien=Admin::find($id);
        $nhanvien->delete();
        return redirect()->back();
    }
}
