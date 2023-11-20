@extends('layouts.app_master_user')
@section('css')
<link rel="stylesheet" href="{{ asset('css/user.min.css') }}">
@stop
@section('content')
    <section>
        <div class="title">Cập nhật thông tin</div>
        <form action="" method="POST">
            @csrf
            @if(!empty(Auth::user()->password))
            <div class="form-group" style="position: relative">
                <label for="email">Mật khẩu cũ:</label>
                <input type="password" class="form-control" required  placeholder="********" name="password_old" value="">
                <a style="position: absolute;top: 54%;right: 10px;color: #333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                @if($errors->has('password_old'))
                    <span class="error-text">
                    {{$errors->first('password_old')}}
                </span>
                @endif
            </div>
            @endif
            <div class="form-group" style="position: relative">
                <label for="email">Mật khẩu mới:</label>
                <input type="password" class="form-control" required  placeholder="********" name="password" value="">
                <a style="position: absolute;top: 54%;right: 10px;color: #333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                @if($errors->has('password'))
                    <span class="error-text">
                        {{$errors->first('password')}}
                    </span>
                @endif
            </div>
            <div class="form-group" style="position: relative">
                <label for="email">Nhập lại mật khẩu mới:</label>
                <input type="password" required class="form-control"  placeholder="********" name="password_comfirm" value="">
                <a style="position: absolute;top: 54%;right: 10px;color: #333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                @if($errors->has('password_comfirm'))
                    <span class="error-text">
                        {{$errors->first('password_comfirm')}}
                    </span>
                @endif
            </div>
            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Cập nhật</button>
        </form>

    </section>
@stop
@section('script')
    <script>
        $(function(){
        	$(".form-group a").click(function(){
        	    let $this = $(this);

        	    if ($this.hasClass('active'))
                {
                	$this.parents('.form-group').find('input').attr('type','password')
                    $this.removeClass('active');
                }else
                {
					$this.parents('.form-group').find('input').attr('type','text')
					$this.addClass('active')
                }
            });
        });
    </script>
@stop
