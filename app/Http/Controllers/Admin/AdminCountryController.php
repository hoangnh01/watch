<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminCountryRequest;
use App\Models\Country;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AdminCountryController extends Controller
{
    public function index()
    {
        $country=Country::paginate(10);
        $viewdata=[
            'country'=>$country
        ];
        return view('admin.country.index',$viewdata);
        

    }
    public function delete($countryId)
    {
        $country=Country::find($countryId);
        $country->delete();
        return redirect()->back();
    }
    public function create()
    {
        return view('admin.country.create');
    }
    public function store(AdminCountryRequest $request)
    {
        $data               = $request->except('_token','logo');
        $data['created_at'] = Carbon::now();
        if ($request->logo) {
            $image = upload_image('logo');
            if ($image['code'] == 1)
                $data['logo'] = $image['name'];
        }

        $id = Country::insertGetId($data);
        return redirect()->back();
    }

    public function edit($id)
    {
        $country=Country::find($id);
        return view('admin.country.update',compact('country'));
    }
    public function update(AdminCountryRequest $request ,$id)
    {
        $country=Country::find($id);
        $data               = $request->except('_token','logo');
        $data['updated_at'] = Carbon::now();

        if ($request->logo) {
            $image = upload_image('logo');
            if ($image['code'] == 1)
                $data['logo'] = $image['name'];
        }

        $country->update($data);
        return redirect()->back();
    }
}
