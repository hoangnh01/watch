<!DOCTYPE html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>{{ strtolower($title_page ?? " Quản lý tài khoản ")   }}</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('sky.png') }}" />
    @yield('css')
    <style>
        .top-header {
            background-color: #f48803;
            }
        #headers {
            background: #f36f21;
            }
        #headers .search form .btnSearch {
            align-items: center;
            background: #f36f21;
            border: 1px solid #f36f21;
            color: #fff;
            display: flex;
            outline: 0;
            padding: 0 10px;
            cursor: pointer;
        }
    </style>
    {{-- Thông báo --}}
    @if(session('toastr'))
        <script>
			var TYPE_MESSAGE = "{{session('toastr.type')}}";
			var MESSAGE = "{{session('toastr.message')}}";
        </script>
    @endif
</head>
<body>
@include('frontend.components.header')
@if (\Session::has('danger'))
    <div class="alert alert-danger alert-dismissible" style="position: fixed;right: 20px;top: 20px;left: 50%;transform: translateX(-50%);z-index: 9999999999999;background-color:red;">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Thất bại! </strong> {{ \Session::get('danger') }}
    </div>
@endif
<div class="container user row">
    <div class="left col-md-4">
        <div class="header">
        <img src="{{ Auth::user()->avatar?asset(Auth::user()->avatar) :asset('images/avt.jpg') }}" alt="" style="width:30px;height:30px;border-radius:50%;border:solid white 1px;">
            <p>
                <span>Tài khoản của</span>
                <span> {{ Auth::user()->name }} </span>
            </p>
        </div>
        <div class="content">
            <ul class="left-nav">
                @foreach(config('user') as $item)
                    <li>
                        <a href="{{ route($item['route']) }}" class="{{ \Request::route()->getName() == $item['route'] ? 'active' : '' }}">
                            <i class="{{ $item['icon'] }}"></i>
                            <span>{{ $item['name'] }}</span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="right col-md-8">
        @yield('content')
    </div>
    <div class="" style="clear: both"></div>
</div>
@include('frontend.components.footer')
  <div id="fb-root"></div>
    <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v7.0'
          });
        };

        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
      <!-- Your customer chat code -->
      <div class="fb-customerchat"
        attribution=setup_tool
        page_id="102626791238629"
        theme_color="#ff7e29"
        logged_in_greeting="Hello, Chào mừng bạn đến với chúng tôi !!!"
        logged_out_greeting="Hello, Chào mừng bạn đến với chúng tôi !!!">
      </div>
<script>
	var DEVICE = '{{  device_agent() }}'
</script>
<script src="{{ asset('js/cart.js') }}" type="text/javascript"></script>

@yield('script')
</body>
</html>
