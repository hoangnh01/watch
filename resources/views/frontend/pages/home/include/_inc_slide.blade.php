<div id="slider">
    <div class="imageSlide js-banner owl-carousel" >
        @foreach($slides as $item)
            <div>
                <a href="{{ asset($item->sd_link) }}" title="{{ $item->sd_title }}">
                    <img style="position: relative;" alt="Đồ án tốt nghiệp" src="{{ asset(pare_url_file($item->sd_image)) }}"  style="max-width: 100%;height: 300px;" class="" />
                </a>
            </div>
        @endforeach
    </div>
</div>
