<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Support\Facades\Input;

use App\Models\Transaction;
use App\Models\Order;
use App\Mail\TransactionSuccess;
use App\Models\District;
use App\Models\Province;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class ShoppingCartController extends Controller
{
    private  $vnp_TmnCode = "0B7MQPMF"; //Mã website tại VNPAY
	private  $vnp_HashSecret = "HNRLKDFZEJJWKUEHUOSYSMWWESNGDPZE"; //Chuỗi bí mật
	private  $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
	private  $vnp_Returnurl = "http://doantotnghiep.vn/shopping/thanh-toan-pay";
    public function index()
    {
        $shopping = \Cart::content();
        $province=Province::all();
        $district=District::all();
        $viewData = [
            'title_page' => 'Danh sách giỏ hàng',
            'shopping'   => $shopping,
            'province'   => $province,
            'district'   => $district
        ];
        return view('frontend.pages.shopping.index', $viewData);
    }
    function getStateList(Request $request)
    {
        $provinceid =$request->provinceid;
        $district =District::where('provinceid', '=', $provinceid)->get();
            return response()->json($district);
    }

    function search_province(Request $request)
    {
        $cities = Province::where('name', 'LIKE', '%'.$request->input('term', '').'%')
        ->get(['id', 'name as text']);
        return ['results' => $cities];
    }
    /**
     * Thêm giỏ hàng
     * */
    public function add($id)
    {
        $product = Product::find($id);

        //1. Kiểm tra tồn tại sản phẩm
        if (!$product) return redirect()->to('/');

        // 2. Kiểm tra số lượng sản phẩm
        if ($product->pro_number < 1) {
            //4. Thông báo
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Số lượng sản phẩm không đủ'
            ]);

            return redirect()->back();
        }

        // 3. Thêm sản phẩm vào giỏ hàng
        \Cart::add([
            'id'      => $product->id,
            'name'    => $product->pro_name,
            'qty'     => 1,
            'price'   => number_price($product->pro_price, $product->pro_sale),
            'weight'  => '1',
            'options' => [
                'sale'      => $product->pro_sale,
                'price_old' => $product->pro_price,
                'image'     => $product->pro_avatar
            ]
        ]);

        //4. Thông báo
        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Thêm giỏ hàng thành công'
        ]);

        return redirect()->back();
    }

    public function postPay(Request $request)
    {
        $data = $request->except("_token");
        if (!\Auth::user()->id) {
            //4. Thông báo
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Đăng nhập để thực hiện tính năng này'
            ]);

            return redirect()->back();
        }
        $data['tst_user_id'] = \Auth::user()->id;$data['tst_user_id'] = \Auth::user()->id;
        $data['tst_total_money'] = str_replace(',', '', \Cart::subtotal(0));
        $data['created_at']      = Carbon::now();
        $transactionID           = Transaction::insertGetId($data);
        if ($transactionID) {
            $shopping = \Cart::content();
            try{
                Mail::to($request->tst_email)->send(new TransactionSuccess($shopping));
            }catch(\Exception $e){

            }
            

            foreach ($shopping as $key => $item) {

                // Lưu chi tiết đơn hàng
                Order::insert([
                    'od_transaction_id' => $transactionID,
                    'od_product_id'     => $item->id,
                    'od_sale'           => $item->options->sale,
                    'od_qty'            => $item->qty,
                    'od_price'          => $item->price,
                    'created_at'        => Carbon::now(),
                ]);

                //Tăng pay ( số lượt mua của sản phẩm dó)
                \DB::table('products')
                    ->where('id', $item->id)
                    ->increment("pro_pay");
            }
        }

        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Đơn hàng của bạn đã được lưu! Hãy check Mail để xem đơn hàng'
        ]);

        \Cart::destroy();
        return redirect()->to('/');
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {

            //1.Lấy tham số
            $qty       = $request->qty ?? 1;
            $idProduct = $request->idProduct;
            $product   = Product::find($idProduct);

            //2. Kiểm tra tồn tại sản phẩm
            if (!$product) return response(['messages' => 'Không tồn tại sản sản phẩm cần update']);

            //3. Kiểm tra số lượng sản phẩm còn ko
            if ($product->pro_number < $qty) {
                return response([
                    'messages' => 'Số lượng cập nhật không đủ',
                    'error'    => true
                ]);
            }

            //4. Update
            \Cart::update($id, $qty);

            return response([
                'messages'   => 'Cập nhật thành công',
                'totalMoney' => \Cart::subtotal(0),
                'totalItem'  => number_format(number_price($product->pro_price, $product->pro_sale) * $qty, 0, ',', '.')
            ]);
        }
    }

    /**
     *  Xoá sản phẩm đơn hang
     * */
    public function delete(Request $request, $rowId)
    {
        if ($request->ajax())
        {
            \Cart::remove($rowId);
            return response([
                'totalMoney' => \Cart::subtotal(0),
                'type'       => 'success',
                'messages'    => 'Xoá sản phẩm khỏi đơn hàng thành công'
            ]);
        }
    }
    //thanh toasn online
    public function showFormPay_ol(Request $request)
    {

		
		      $transactionID = $request->vnp_TxnRef;
		      
		      $transaction = Transaction::find($transactionID);
		      if ($transaction)
			  {
				  \Cart::destroy();
				  $transaction->tst_type =2;
                  $transaction->save();
                  \Session::flash('toastr', [
                    'type'    => 'success',
                    'message' => 'Giao dịch thành công'
                    ]);
				  return redirect()->to('/');
			  }
			  
			
		
        $province=Province::all();
        $district=District::all();
		$products = \Cart::content();
		return view('frontend.pages.shopping.pay_online',compact('products','province','district'));
    }
    public function savePayOnline(Request $request)
    {
        $totalMoney = str_replace(',','',\Cart::subtotal(0,3));
		$transactionId = 	Transaction::insertGetId([
			'tst_user_id' => get_data_user('web'),
            'tst_total_money'   =>  (int)$totalMoney,
            'tst_name'     =>$request->name,
            'tst_province_id'=>$request->tst_province_id,
            'tst_district_id'=>$request->tst_district_id,
            'tst_email'         =>$request->email,
			'tst_note'    => $request->note,
			'tst_address' => $request->address,
			'tst_phone'   => $request->phone,
			'created_at' => Carbon::now(),
			'updated_at' => Carbon::now()
		]);
		
		if ($transactionId)
		{
			$products = \Cart::content();
			foreach ($products as $product)
			{
				Order::insert([
					'od_transaction_id' => $transactionId,
                    'od_product_id'     => $product->id,
                    'od_sale'           => $product->options->sale,
                    'od_qty'            => $product->qty,
                    'od_price'          => $product->price,
                    'created_at'        => Carbon::now()
				]);
			}
		}
		
		// Sau khi xử lý xong bắt đầu xử lý online
		error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
		
		// tham so dau vao
		$inputData = array(
			"vnp_Version"    => "2.0.0",
			"vnp_TmnCode"    => $this->vnp_TmnCode,
			"vnp_Amount"     => $totalMoney * 100, // so tien thanh toan,
			"vnp_Command"    => "pay",
			"vnp_CreateDate" => date('YmdHis'),
			"vnp_CurrCode"   => "VND",
			"vnp_IpAddr"     => $_SERVER['REMOTE_ADDR'], // IP
			"vnp_Locale"     => $request->language, // ngon ngu,
			"vnp_OrderInfo"  => $request->note, // noi dung thanh toan,
			"vnp_OrderType"  => $request->order_type,    // loai hinh thanh toan
			"vnp_ReturnUrl"  => $this->vnp_Returnurl,   // duong dan tra ve
			"vnp_TxnRef"     => $transactionId , // ma don hang,
		);
		
		if ($request->bank_code) {
			$inputData['vnp_BankCode'] = $request->bank_code;
		}
		ksort($inputData);
		$query = "";
		$i = 0;
		$hashdata = "";
		foreach ($inputData as $key => $value) {
			if ($i == 1) {
				$hashdata .= '&' . $key . "=" . $value;
			} else {
				$hashdata .= $key . "=" . $value;
				$i = 1;
			}
			$query .= urlencode($key) . "=" . urlencode($value) . '&';
		}
		
		
		$vnp_Url = $this->vnp_Url . "?" . $query;
		if ($this->vnp_HashSecret) {
			$vnpSecureHash = hash('sha256', $this->vnp_HashSecret . $hashdata);
			$vnp_Url .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
		}
		
		$returnData = array(
			'code' => '00',
			'message' => 'success',
			'data' => $vnp_Url
		);
		
		return redirect()->to($returnData['data']) ;
    }
}
