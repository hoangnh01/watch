<div id="footer">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title">Về chúng tôi</div>
                    <ul>
                        <li>
                            <a href="{{ route('get.blog.home') }}">Bài viết</a>
                        </li>
                        <li>
                            <a href="{{ route('get.product.list') }}">Sản phẩm</a>
                        </li>
                        <li>
                            <a href="{{ route('get.register') }}">Đăng ký</a>
                        </li>
                        <li>
                            <a href="{{ route('get.login') }}">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Tin tức</div>
                    <ul>
                        @if (isset($menus))
                            @foreach($menus as $menu)
                                <li>
                                    <a title="{{ $menu->mn_name }}"
                                        href="{{ route('get.article.by_menu',$menu->mn_slug.'-'.$menu->id) }}">
                                        {{ $menu->mn_name }}
                                    </a>
                                </li>
                            @endforeach
                        @endif
                        <li><a href="{{ route('get.contact') }}">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Chính sách</div>
                    <ul>
                        <li><a href="{{ route('get.static.shopping_guide') }}">Hướng dẫn mua hàng</a></li>
                        <li><a href="{{  route('get.static.return_policy') }}">Chính sách đổi trả</a></li>
                        <li><a href="{{  route('get.static.customer_care') }}">Chăm sóc khách hàng</a></li>
                        <li><a href="{{  route('get.static.privacy_policy') }}">Chính sách bảo mật</a></li>
                        <li><a href="{{  route('get.static.customer_care') }}">Chính sách bảo hành</a></li>

                    </ul>
                </div>
            </div>
            <div class="bot">
                <div class="social">
                    <div class="title">KẾT NỐI VỚI CHÚNG TÔI</div>
                    <p>
                        <a href="https://www.youtube.com/@dangquangwatch" class="fa fa fa-youtube"></a>
                        <a href="https://www.facebook.com/donghodangquang" class="fa fa-facebook-official"></a>
                    </p>
                </div>
            </div>
        </div>
        <div class="footer__mid">
            <div class="title">Hệ thống cửa hàng</div>
            <div class="image">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3753.9734709433587!2d105.775332474971!3d19.79872212888709!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3136f8063940ebe5%3A0x202f08a16758d7ca!2zQ-G7rWEgaMOgbmcgxJDhu5NuZyBo4buTIMSQxINuZyBRdWFuZyBXYXRjaA!5e0!3m2!1svi!2sus!4v1698557135137!5m2!1svi!2sus"  width="100%" height="130px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.4375216920366!2d105.54715101417061!3d21.134979689521245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3134f7d365cb6685%3A0x76dca4c2694056ca!2zxJDDrG5oIEzDoG5nIFbDtW5nIE5nb-G6oWk!5e0!3m2!1svi!2sus!4v1588582545364!5m2!1svi!2sus" width="100%" height="130px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> -->
                    <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d3725.7017698736763!2d105.7657895!3d20.9644884!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1683286853929!5m2!1svi!2s" width="100%" height="130px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> -->
            </div>
        </div>
        <div class="footer__right">
            <div class="title">Fanpage của chúng tôi</div>
             <div class="image">
                <div class="fb-page"
                      data-href="https://www.facebook.com/donghodangquang"
                      data-width="300"
                      data-height="240"
                      data-hide-cover="false"
                      data-show-facepile="false" ></div>
            </div>
        </div>
    </div>
</div>
{{-- <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=3205159929509308&autoLogAppEvents=1"></script> --}}

