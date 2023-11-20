@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý loại tin tức</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.menu.index') }}"> Loại tin</a></li>
            <li class="active"><a> Danh sách</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.menu.create') }}" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Tên</th>
                                    <!-- <th>Ảnh</th> -->
                                    <th>Trạng thái</th>
                                    <th>Hot</th>
                                    <th>Thời gian</th>
                                    <th>Hành động</th>
                                </tr>
                                @if ($menus)
                                    @foreach($menus as $menu)
                                        <tr>
                                            <td>{{ $menu->id }}</td>
                                            <td>{{ $menu->mn_name }}</td>
                                            <!-- <td>
                                                <img src="{{ asset(pare_url_file($menu->mn_avatar))  }}" style="width: 80px;height: 80px;">
                                            </td> -->
                                            <td>
                                                @if ($menu->mn_status == 1)
                                                    <a href="{{ route('admin.menu.active', $menu->id) }}" class="label label-info">Hiển thị</a>
                                                @else
                                                    <a href="{{ route('admin.menu.active', $menu->id) }}" class="label label-default">Ẩn</a>
                                                @endif
                                            </td>
                                            <td>
                                                @if ($menu->mn_hot == 1)
                                                    <a href="{{ route('admin.menu.hot', $menu->id) }}" class="label label-info">Hot</a>
                                                @else
                                                    <a href="{{ route('admin.menu.hot', $menu->id) }}" class="label label-default">hết hot</a>
                                                @endif
                                            </td>
                                            <td>{{  $menu->created_at }}</td>
                                            <td>
                                                <a href="{{ route('admin.menu.update', $menu->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                                                <a href="{{  route('admin.menu.delete', $menu->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xoá</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
