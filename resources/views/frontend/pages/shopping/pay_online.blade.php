@extends('layouts.app_master_frontend')
@section('css')
<link rel="stylesheet" href="{{ asset('css/cart.min.css') }}">
<link rel="stylesheet" href="{{  asset('admin/bower_components/select2/dist/css/select2.min.css') }}">

@stop
@section('content')
@if(count($products)==0)
<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Giỏ hàng trống  !!!!')
    window.location.href='{{route('get.home')}}';
</SCRIPT>"
@endif
<div class="container">
    <form  method="post" action="">
    <div class="product-list cart">
            @csrf
            <div class="left">
                <div class="list">
                    <div class="title">THÔNG TIN GIỎ HÀNG</div>
                    <div class="list__content">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th style="width: 100px;"></th>
                                    <th style="width: 30%">Sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($products as $key => $item)
                                <tr>
                                    <td>
                                        <a href="{{ route('get.product.detail',\Str::slug($item->name).'-'.$item->id) }}"
                                            title="{{ $item->name }}" class="avatar image contain">
                                        <img alt="" src="{{ asset(pare_url_file($item->options->image)) }}" class="lazyload">
                                        </a>
                                    </td>
                                    <td>
                                        <a href="{{ route('get.product.detail',\Str::slug($item->name).'-'.$item->id) }}"><strong>{{ $item->name }}</strong></a>
                                    </td>
                                    <td>
                                        <p><b>{{  number_format($item->price,0,',','.') }} đ</b></p>
                                        <p>
                                            @if ($item->options->price_old)
                                            <span style="text-decoration: line-through;">{{  number_format(number_price($item->options->price_old),0,',','.') }} đ</span>
                                            <span class="sale">- {{ $item->options->sale }} %</span>
                                            @endif
                                        </p>
                                    </td>
                                    <td style="text-align:center;">
                                        {{ $item->qty }}
                                    </td>
                                    <td>
                                        <span class="js-total-item">{{ number_format($item->price * $item->qty,0,',','.') }} đ</span>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <p style="float: right;margin-top: 20px;">Tổng tiền : <b id="sub-total">{{ \Cart::subtotal(0) }} đ</b></p>
                    </div>
                </div>
            </div>
            <div class="right">
                <div class="customer">
                    <div class="title">THÔNG TIN ĐẶT HÀNG</div>
                    <div class="panel panel-info">
                        <div class="panel-body">
                            <div class="form-group">
                                        <div class="col-md-12"><strong>Name:</strong></div>
                                        <div class="col-md-12">
                                            <input type="text" readonly name="name" class="form-control" value="{{ get_data_user('web','name') }}" />
                                        </div>
                            </div>
                            <div class="form-group">
                                    <div class="col-md-12"><strong>Email:</strong></div>
                                    <div class="col-md-12">
                                        <input type="text" readonly  name="email" class="form-control" value="{{ get_data_user('web','email') }}" />
                                    </div>
                            </div>
                            <div class="form-group">
                                    <div class="col-md-12"><strong>Số điện thoại:</strong></div>
                                    <div class="col-md-12">
                                        <input type="number" name="phone" class="form-control" value="{{ get_data_user('web','phone') }}" />
                                    </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Tỉnh/thành phố:</strong></div>
                                <div class="col-md-12">
                                    <select name="tst_province_id" required="" id="province"  class="form-control select2">
                                        <option value="">---Chọn tỉnh/Thành phố---</option>
                                        @foreach ($province as $key => $country)
                                        <option value="{{ $country->id }}">
                                                {{ $country->name }}</option>
                                        @endforeach
                                    </select>
                                    @if($errors->has('tst_province_id'))
                                    <span class="error-text text-danger">
                                    {{ $errors->first('tst_province_id') }}
                                    </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><label for="tst_district_id">Quận/Huyện:</label></div>
                                <div class="col-md-12">
                                    <select required="" name="tst_district_id"  id="district"  class="form-control">
                                    </select>
                                    @if($errors->has('tst_district_id'))
                                    <span class="error-text text-danger">
                                    {{ $errors->first('tst_district_id') }}
                                    </span>
                                    @endif
                            </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Địa chỉ:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label for="amount">Số tiền</label>
                                    <input class="form-control" readonly name="amount" type="text" value="{{ \Cart::subtotal(0,3) }}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="language">Loại hàng hóa </label>
                                    <select name="order_type" required  class="form-control">
                                        <option value="topup">Nạp tiền điện thoại</option>
                                        <option value="billpayment">Thanh toán hóa đơn</option>
                                        <option value="fashion">Thời trang</option>
                                        <option value="other">Khác - Xem thêm tại VNPAY</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label for="bank_code">Ngân hàng</label>
                                    <select name="bank_code" id="bank_code" required class="form-control">
                                        <option value="">Không chọn</option>
                                        <option value="NCB"> Ngan hang NCB</option>
                                        <option value="AGRIBANK"> Ngan hang Agribank</option>
                                        <option value="SCB"> Ngan hang SCB</option>
                                        <option value="SACOMBANK">Ngan hang SacomBank</option>
                                        <option value="EXIMBANK"> Ngan hang EximBank</option>
                                        <option value="MSBANK"> Ngan hang MSBANK</option>
                                        <option value="NAMABANK"> Ngan hang NamABank</option>
                                        <option value="VNMART"> Vi dien tu VnMart</option>
                                        <option value="VIETINBANK">Ngan hang Vietinbank</option>
                                        <option value="VIETCOMBANK"> Ngan hang VCB</option>
                                        <option value="HDBANK">Ngan hang HDBank</option>
                                        <option value="DONGABANK"> Ngan hang Dong A</option>
                                        <option value="TPBANK"> Ngân hàng TPBank</option>
                                        <option value="OJB"> Ngân hàng OceanBank</option>
                                        <option value="BIDV"> Ngân hàng BIDV</option>
                                        <option value="TECHCOMBANK"> Ngân hàng Techcombank</option>
                                        <option value="VPBANK"> Ngan hang VPBank</option>
                                        <option value="MBBANK"> Ngan hang MBBank</option>
                                        <option value="ACB"> Ngan hang ACB</option>
                                        <option value="OCB"> Ngan hang OCB</option>
                                        <option value="IVB"> Ngan hang IVB</option>
                                        <option value="VISA"> Thanh toan qua VISA/MASTER</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label for="language">Ngôn ngữ</label>
                                    <select name="language" id="language" required class="form-control">
                                        <option value="vn">Tiếng Việt</option>
                                        <option value="en">English</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Ghi chú:</strong></div>
                                <div class="col-md-12">
                                    <textarea name="note" id="" cols="30" rows="4" class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <button type="submit" class="buy1 btn btn-purple">Xác nhận thông tin</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </form>
</div>
@stop
@section('script')
<script src="{{ asset('js/cart.js') }}" type="text/javascript"></script>
<script src="{{  asset('admin/bower_components/select2/dist/js/select2.min.js') }}"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://codeseven.github.io/toastr/build/toastr.min.js"></script>
<script type = "text/javascript" >
    $(function () {
        $(".js-delete-item").click(function (event) {
            event.preventDefault();
            let $this = $(this);
            let url = $this.attr('href');

            if (url) {
                $.ajax({
                    url: url,
                }).done(function (results) {
                    toastr.success(results.messages);
                    $this.parents('tr').remove();
                    $("#sub-total").text(results.totalMoney + " đ");
                });
            }
        })

        $('.js-increase').click(function (event) {
            event.preventDefault();
            let $this = $(this);
            let $input = $this.parent().prev();
            let number = parseInt($input.val());
            if (number >= 10) {
                toastr.warning("Mỗi sản phẩm chỉ được mua tối đa số lượng 10 lần / 1 lần mua");
                return false;
            }

            let price = $this.parent().attr('data-price');
            let URL = $this.parent().attr('data-url');
            let productID = $this.parent().attr("data-id-product");

            number = number + 1;
            $.ajax({
                url: URL,
                data: {
                    qty: number,
                    idProduct: productID
                }
            }).done(function (results) {
                if (typeof results.totalMoney !== "undefined") {
                    $input.val(number);
                    $("#sub-total").text(results.totalMoney + " đ");
                    toastr.success(results.messages);
                    $this.parents('tr').find(".js-total-item").text(results.totalItem + ' đ');
                } else {
                    $input.val(number - 1);
                }
            });
        })

        $('.js-reduction').click(function (event) {
            let $this = $(this);
            let $input = $this.parent().prev();
            let number = parseInt($input.val());
            if (number <= 1) {
                toastr.warning("Số lượng sản phẩm phải >= 1");
                return false;
            }

            let URL = $this.parent().attr('data-url');
            let productID = $this.parent().attr("data-id-product");


            number = number - 1;
            $.ajax({
                url: URL,
                data: {
                    qty: number,
                    idProduct: productID
                }
            }).done(function (results) {
                if (typeof results.totalMoney !== "undefined") {
                    $input.val(number);
                    $("#sub-total").text(results.totalMoney + " đ");
                    toastr.success(results.messages);
                    $this.parents('tr').find(".js-total-item").text(results.totalItem + ' đ');
                } else {
                    $input.val(number + 1);
                }
            });
        })
    })

    $(document).ready(function () {

            $('#province').on('change', function (e) {
                console.log(e);
                var provinceid = e.target.value;
                $.get('/get-state-list?provinceid=' + provinceid, function (data) {
                    console.log(data);
                    $('#district').empty();
                    $('#district').append('<option value="0" disable="true" selected="true">---Chọn quận, huyện---</option>');

                    $.each(data, function (index, regenciesObj) {
                        $('#district').append('<option value="' + regenciesObj.id + '">' + regenciesObj.name + '</option>');
                    })
                });
            });
    });
    $(document).ready(function () {
        $('#province').select2({
            minimumInputLength: 3,
            ajax: {
                url: '{{ route("api.cities.search") }}',
                dataType: 'json',
            },
        });
    })

</script>
@stop
