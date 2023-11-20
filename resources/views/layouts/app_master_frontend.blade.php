<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <title>{{ strtolower($title_page ?? "Đồ án tốt nghiệp")   }}</title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('logo.jpg') }}" />
        @yield('css')
        <style>
            .mainmenubtn {
                    background-color: red;
                    color: white;
                    border: none;
                    cursor: pointer;
                    padding:20px;
                }
            .dropdown {
                    position: relative;
                    display: inline-block;
                }
            .dropdown-child {
                    display: none;
                    background-color: black;
                    min-width: 200px;
                    position: absolute;
                    top:45px;
                    right:0px;
                    z-index: 0;
                }
            .dropdown-child a {
                    color: white;
                    text-decoration: none;
                    display: block;
                    position: relative;
                }
            .dropdown:hover .dropdown-child {
                    display: block;
                }
            .menu:hover .menu-list{
                display: block;
            }
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
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=2509867012662386&autoLogAppEvents=1"></script>
        @include('frontend.components.header')
        @yield('content')
        @include('frontend.components.footer')
        {{-- <script type="text/javascript">
            var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
            (function(){
            var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
            s1.async=true;
            s1.src='https://embed.tawk.to/5e4e0b13298c395d1ce8d636/default';
            s1.charset='UTF-8';
            s1.setAttribute('crossorigin','*');
            s0.parentNode.insertBefore(s1,s0);
            })();
        </script> --}}
        <!-- Load Facebook SDK for JavaScript -->
      {{-- <div id="fb-root"></div> --}}
    {{-- <script>
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
    </script> --}}
      <!-- Your customer chat code -->
      {{-- <div class="fb-customerchat"
        attribution=setup_tool
        page_id="102626791238629"
        theme_color="#ff7e29"
        logged_in_greeting="Hello, Chào mừng bạn đến với chúng tôi !!!"
        logged_out_greeting="Hello, Chào mừng bạn đến với chúng tôi !!!">
      </div> --}}
        <script>
            var DEVICE = '{{  device_agent() }}'
        </script>
        @yield('script')
    </body>
</html>
