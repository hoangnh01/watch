@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Cập nhật xuất sứ sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang Chủ</a></li>
            <li><a href="{{ route('admin.country.index') }}"> Xuất Xứ</a></li>
            <li class="active"> Thêm Mới </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST" enctype="multipart/form-data">
                         @csrf
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('cname') ? 'has-error' : '' }}">
                                <label for="name">Tên <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="name" required value="{{$country->name ?? old('name')}}"  placeholder="Name ...">
                                @if ($errors->first('name'))
                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="box box-warning">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Ảnh</h3>
                                </div>
                                <div class="box-body block-images">
                                    <div style="margin-bottom: 10px">
                                        <img src="{{ asset('/images/no-image.jpg') }}" onerror="this.onerror=null;this.src={{asset('/images/no-image.jpg')}};" alt="" class="img-thumbnail" style="width: 200px;height: 200px;">
                                    </div>
                                    <div style="position:relative;"> <a class="btn btn-primary" href="javascript:;"> Chọn ảnh... <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=0);opacity:0;background-color:transparent;color:transparent;" name="logo" size="40" class="js-upload"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.country.index') }}" class="btn btn-danger">
                                Quay lại <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
