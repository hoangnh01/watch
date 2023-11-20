@extends('layouts.app_master_admin')
@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>Thêm mới nhân viên</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{route('admin.nhanvien.index') }}"> Admin</a></li>
        <li class="active"><a> Create</a></li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <!-- /.col -->
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#activity" data-toggle="tab" aria-expanded="true">Thông tin Admin</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="settings">
                        <form class="form-horizontal" method="POST" enctype="multipart/form-data" action="">
                            @csrf
                            <div class="form-group">
                                <label for="inputName" class="col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input type="name" required class="form-control" name="name" placeholder="" value=" {{old('name')}} ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" required class="form-control" name="email"  placeholder="Email" value="{{old('email')}}">
                                    @if ($errors->first('email'))
                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-sm-2 control-label">password</label>
                                <div class="col-sm-10">
                                    <input type="password" required class="form-control" name="password"  placeholder="password" value="{{old('password')}}">
                                    @if ($errors->first('password'))
                                    <span class="text-danger">{{ $errors->first('password') }}</span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputName" class="col-sm-2 control-label">Phone</label>
                                <div class="col-sm-10">
                                    <input type="number" required class="form-control" name="phone" placeholder="Phone" value="{{old('phone')}}">
                                    @if ($errors->first('phone'))
                                    <span class="text-danger">{{ $errors->first('phone') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1" class="col-sm-2 control-label">Level</label>
                                <div class="col-sm-10">
                                    <select class="form-control"  id="exampleFormControlSelect1" name="level">
                                        <option value="0">Admin</option>
                                        <option value="1">Super Admin</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputName" class="col-sm-2 control-label">Address</label>
                                <div class="col-sm-10">
                                    <input type="text" required class="form-control" name="address" placeholder="Nhập địa chỉ cá nhân" value="{{old('address')}}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputName" class="col-sm-2 control-label">Avatar</label>
                                <div class="col-sm-10">
                                    <input type="file" class="form-control" name="avatar" value="{{old('avatar')}}" >
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger">Thêm mới</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
            </div>
            <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- Main content -->
<!-- /.content -->
@stop
