@extends('layouts.app_master_frontend')
@section('css')
<style>
    * {
    box-sizing: border-box;
    }
    img {
    vertical-align: middle;
    }
    /* Position the image container (needed to position the left and right arrows) */
    .container {
    position: relative;
    }
    /* Hide the images by default */
    .mySlides {
    display: none;
    }
    /* Add a pointer when hovering over the thumbnail images */
    .cursor {
    cursor: pointer;
    }
    /* Next & previous buttons */
    .prev,
    .next {
    cursor: pointer;
    position: absolute;
    top: 40%;
    width: auto;
    padding: 16px;
    margin-top: -50px;
    color: white;
    font-weight: bold;
    font-size: 20px;
    border-radius: 0 3px 3px 0;
    user-select: none;
    -webkit-user-select: none;
    }
    /* Position the "next button" to the right */
    .next {
    right: 0;
    border-radius: 3px 0 0 3px;
    }
    /* On hover, add a black background color with a little bit see-through */
    .prev:hover,
    .next:hover {
    background-color: rgba(0, 0, 0, 0.8);
    }
    /* Number text (1/3 etc) */
    .numbertext {
    color: #f2f2f2;
    font-size: 12px;
    padding: 8px 12px;
    position: absolute;
    top: 0;
    }
    /* Container for image text */
    .caption-container {
    text-align: center;
    background-color: #222;
    padding: 2px 16px;
    color: white;
    }
    .row:after {
    content: "";
    display: table;
    clear: both;
    }
    /* Six columns side by side */
    .column {
    float: left;
    width: 16.66%;
    }
    /* Add a transparency effect for thumnbail images */
    .demo {
    opacity: 0.6;
    }
    .active,
    .demo:hover {
    opacity: 1;
    }
</style>
<link rel="stylesheet" href="{{ asset('css/product_detail_insights.min.css') }}">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
@stop
@section('content')
<div class="container">
    <div class="breadcrumb">
        <ul>
            <li>
                <a itemprop="url" href="{{asset('/')}}" title="Home"><span itemprop="title">Trang chủ</span></a>
            </li>
            <li>
                <a itemprop="url" href="{{ route('get.product.list') }}" title="{{$product->category->c_name}}"><span
                    itemprop="title"> {{$product->category->c_name}}</span></a>
            </li>
            <li>
                <a itemprop="url" href="" title="{{$product->pro_name}}"><span itemprop="title"> {{$product->pro_name}} </span></a>
            </li>
            <div id="ex1" class="modal container">
                @if(count($images)>0)
                <div class="container">
                    @php
                        $i=0;
                    @endphp
                    @foreach($images as $img)
                    <div class="mySlides" style="width:100%;">
                        <img src=" {{ asset(pare_url_file($img->pi_slug)) }} " style="width:100%">
                    </div>
                    @endforeach

                    <a class="prev" onclick="plusSlides(-1)">❮</a>
                    <a class="next" onclick="plusSlides(1)">❯</a>
                    <div class="caption-container">
                        <p id="caption"></p>
                    </div>
                    <div class="row">
                        @foreach($images as $img)
                        <div class="column">
                            <img class="demo cursor" src=" {{ asset(pare_url_file($img->pi_slug)) }}" style="width:100%" onclick="currentSlide({{ $i++ }})">
                        </div>
                        @endforeach
                    </div>
                </div>
                @else
                    <h3>Không có ảnh nào </h3>
                @endif
            </div>
            <!-- Link to open the modal -->
        </ul>
    </div>
    <div class="card">
        <div class="card-body info-detail">
            <div class="left">
                <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title=""
                    class="">
                <img alt="" style="max-width: 100%" src="{{ asset(pare_url_file($product->pro_avatar)) }}"
                    class="lazyload">
                </a>
                {{-- @foreach($images as $img)
                <img alt="" style="max-width: 10%" src="{{ pare_url_file($img->pi_slug) }}"
                    class="lazyload">
                @endforeach --}}
                <p><a href="#ex1" rel="modal:open" class="btn btn-success" style="background-color:#288ad6;">Xem Album ảnh ({{ count($images) }} )</a></p>
            </div>
            <div class="right" id="product-detail" data-id="{{ $product->id }}">
                <h1>{{  $product->pro_name }}</h1>
                <div class="right__content">
                    <div class="info">
                        <div class="prices">
                            @if ($product->pro_sale)
                            <p>Giá niêm yết:
                                <span class="value">{{ number_format($product->pro_price,0,',','.') }} đ</span>
                            </p>
                            @php
                            $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                            @endphp
                            <p>
                                Giá bán: <span
                                    class="value price-new">{{  number_format($price,0,',','.') }} đ</span>
                                <span class="sale">-{{  $product->pro_sale }}%</span>
                            </p>
                            @else
                            <p>
                                Giá bán: <span class="value price-new">{{  number_format($product->pro_price,0,',','.') }} đ</span>
                            </p>
                            @endif
                            <p>
                                <span>View :&nbsp</span>
                                <span>{{ $product->pro_view }}</span>
                            </p>
                        </div>
                        @if(count($shopping)>0)
                        <div class="btn-cart">
                            <a style="background-color:green;" href="#" title="Mua ngay nào"
                                    onclick="add_cart_detail('17617',0);" class="muangay">
                                    <span>Bạn đã mua</span>
                                    <span>sản phẩm này</span>
                                </a>
                                <a href="{{ route('ajax_get.user.add_favourite', $product->id) }}"
                                        title="Thêm sản phẩm yêu thích"
                                        class="muatragop  {{ !\Auth::id() ? 'js-show-login' : 'js-add-favourite' }}">
                                    <span>Yêu thích</span>
                                    <span>Sản phẩm</span>
                            </a>
                        </div>
                        @else
                        <div class="btn-cart">

                        <a href="{{ route('get.shopping.add', $product->id) }}" title="Mua ngay nào"
                                onclick="add_cart_detail('17617',0);" class="muangay">
                                <span>Mua ngay</span>
                                <span>Sản phẩm</span>
                            </a>
                            <a href="{{ route('ajax_get.user.add_favourite', $product->id) }}"
                                    title="Thêm sản phẩm yêu thích"
                                    class="muatragop  {{ !\Auth::id() ? 'js-show-login' : 'js-add-favourite' }}">
                                <span>Yêu thích</span>
                                <span>Sản phẩm</span>
                        </a>
                        </div>
                        @endif
                        <div class="infomation">
                            <h2 class="infomation__title">Thông số kỹ thuật</h2>
                            <div class="infomation__group">
                                <div class="item">
                                    <p class="text1">Danh mục:</p>
                                    <h3 class="text2">
                                        @if (isset($product->category->c_name))
                                        <a href="{{  route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id }}">{{ $product->category->c_name }}</a>
                                        @else
                                        "[Tú]"
                                        @endif
                                    </h3>
                                </div>
                                <div class="item">
                                    <p class="text1">Xuất sứ:</p>
                                    <h3 class="text2">{{ $product->country->name ?? 'Tú' }}</h3>
                                </div>
                                <div class="item">
                                    <p class="text1">Năng lượng:</p>
                                    <h2 class="text2">{{ $product->pro_energy }}</h2>
                                </div>
                                <div class="item">
                                    <p class="text1">Độ chịu nước:</p>
                                    <h3 class="text2">{{ $product->pro_resistant }}</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ads">
                        <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"
                            src="{{ asset(url('images/banner/dongho.jpg')) }}">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        @include('frontend.pages.product_detail.include._inc_ratings')
        <div class="comments">
            <div class="form-comment">
                <div class="fb-comments" data-href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" data-numposts="5" data-width=""></div>
            </div>
        </div>
    </div>
    <div class="card-body product-des">
        <div class="left">
            <div class="tabs">
                <div class="tabs__content">
                    <div class="product-five">
                        <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                            @foreach($productsSuggests as $product)
                            <div class="item">
                                @include('frontend.components.product_item',['product' => $product])
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="right">
            <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"
                src="{{ asset(url('images/banner/dongho.jpg')) }}"></a>
        </div>
    </div>
</div>
@stop
@section('script')
<script>
    var ROUTE_COMMENT = '{{ route('ajax_post.comment') }}';
    var CSS = "{{ asset('css/product_detail.min.css') }}";
    // var URL_CAPTCHA = '{{ route('ajax_post.captcha.resume') }}'
          $("#fade").modal({
    fadeDuration: 100
    });

</script>
<script src="{{ asset('js/product_detail.js') }}" type="text/javascript"></script>
<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
      showSlides(slideIndex += n);
    }

    function currentSlide(n) {
      showSlides(slideIndex = n);
    }

    function showSlides(n) {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("demo");
      var captionText = document.getElementById("caption");
      if (n > slides.length) {slideIndex = 1}
      if (n < 1) {slideIndex = slides.length}
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
      }
      for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex-1].style.display = "block";
      dots[slideIndex-1].className += " active";
      captionText.innerHTML = dots[slideIndex-1].alt;
    }
</script>
@stop
