<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Country;

class CategoryController extends FrontendController
{
    public function index(Request $request, $slug)
    {
        $arraySlug = explode('-', $slug);
        $id = array_pop($arraySlug);
        if ($id) {
            // $attributes =  $this->syncAttributeGroup();
            $category = Category::find($id);

            $products = Product::where([
                'pro_active'      => 1,
                'pro_category_id' => $id
            ]);

            $paramAtbSearch =  $request->except('price','page','k','country','rv','sort');
            $paramAtbSearch =  array_values($paramAtbSearch);

            if (!empty($paramAtbSearch)) {
                $products->whereHas('attributes', function($query) use($paramAtbSearch){
                    $query->whereIn('pa_attribute_id', $paramAtbSearch);
                });
            }

            if ($request->price) {
                $price =  $request->price;
                switch ($price)
			{
				case '1':
					$products->where('pro_price','<',2000000);
					break;
				
				case '2':
					$products->whereBetween('pro_price',[2000000,5000000]);
					break;
				
				case '3':
					$products->whereBetween('pro_price',[5000000,10000000]);
					break;
				
				case '4':
					$products->whereBetween('pro_price',[10000000,20000000]);
					break;
				
				case '5':
                $products->where('pro_price','>',20000000);
					break;
			}
            }

            if ($request->k) $products->where('pro_name','like','%'.$request->k.'%');
            if ($country = $request->country) $products->where('pro_country',$country);

            if ($request->rv)
        {
            $review=$request->rv;
            switch ($review)
			{
				case '1':
					$products->where('pro_age_review','>=',1);
					break;
				
				case '2':
                $products->where('pro_age_review','>=',1.9);
					break;
				
				case '3':
                $products->where('pro_age_review','>',2.9);
					break;
				
				case '4':
                $products->where('pro_age_review','>=',3.9);
					break;
				
				case '5':
                $products->where('pro_age_review','>=',4.9);
					break;
			}
        }
            if ($request->sort) $products->orderBy('id',$request->sort);

            $products = $products->select('id','pro_name','pro_slug','pro_sale','pro_avatar','pro_price','pro_review_total','pro_review_star','pro_age_review','pro_country')
                ->paginate(12);

            $country=Country::all();

            // Lấy thuộc tính
            $attributes =  $this->syncAttributeGroup();

            $viewData = [
                'category'      =>$category,
                'attributes'    => $attributes,
                'products'      => $products,
                'title_page'    => $category->c_name,
                'query'         => $request->query(),
                'country'       => $country,
                'link_search'   => request()->fullUrlWithQuery(['k' => \Request::get('k')])
            ];

            return view('frontend.pages.product.index', $viewData);
        }
    }
}
