<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Rating;
use App\Models\Product;
class AdminRatingController extends Controller
{
    public function index()
    {
        $ratings = Rating::with('product:id,pro_name,pro_slug','user:id,name')
        ->orderByDesc('id')
        ->paginate(10);

        return view('admin.rating.index',compact('ratings'));
    }

    public function delete($id)
    {
        $rating = Rating::find(($id));
        if ($rating) {
            $product =  Product::find($rating->r_product_id);
            $total=$product->pro_review_total --;
            $total=$product->save();

            $number=($product->pro_review_star -= $rating->r_number);
            $number=$product->save();
            if($product->pro_review_total==0)
            {
                $product->pro_age_review=!$product->pro_age_review;
                $product->save();
            }
            else{
                $product->pro_age_review = round($product->pro_review_star / $product->pro_review_total,0);
                $product->save();
            }
            $rating->delete();
        }

        return redirect()->back();
    }
}