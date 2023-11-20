@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý xuất xứ sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang Chủ</a></li>
            <li><a href="{{  route('admin.country.index') }}"> Xuất Xứ</a></li>
            <li class="active"><a href="">Danh Sách</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.country.create') }}" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Tên</th>
                                    <th>Ảnh</th>
                                    <th>Thời gian</th>
                                    <th>Hành động</th>
                                </tr>
                                @if ($country)
                                    @foreach($country as $country)
                                        <tr>
                                            <td>{{ $country->id }}</td>
                                            <td>{{ $country->name }}</td>
                                            <td>
                                                <img src="{{ asset(pare_url_file($country->logo ?? ''))  ?? '/images/no-image.jpg' }}" onerror="this.onerror=null;this.src={{asset('/images/no-image.jpg')}};"
                                                     alt="" class="img-thumbnail" style="width: 80px;height: 80px;">
                                            </td>
                                            <td>{{  $country->created_at }}</td>
                                            <td>
                                                <a href="{{ route('admin.country.update', $country->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                                                <a href="{{  route('admin.country.delete', $country->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xoá</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {{--  {!! $country->links() !!}  --}}
                </div>
                <!-- /.box-footer-->
            </div></div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
