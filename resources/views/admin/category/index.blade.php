@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý loại sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang Chủ</a></li>
            <li><a href="{{  route('admin.category.index') }}"> Loại Sản Phẩm</a></li>
            <li class="active"><a> Danh Sách</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.category.create') }}" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Tên</th>
                                    <th>Ảnh</th>
                                    <th>Trạng thái</th>
                                    <th>Nổi bật</th>
                                    <th>Thời gian</th>
                                    <th>Hành động</th>
                                </tr>
                                @if ($categories)
                                    @foreach($categories as $category)
                                        <tr>
                                            <td>{{ $category->id }}</td>
                                            <td>{{ $category->c_name }}</td>
                                            <td>
                                                <img src="{{ asset(pare_url_file($category->c_avatar ?? '') ?? '/images/no-image.jpg')  }}" onerror="this.onerror=null;this.src={{asset('/images/no-image.jpg')}};"
                                                     alt="" class="img-thumbnail" style="width: 80px;height: 80px;">
                                            </td>
                                            <td>
                                                @if ($category->c_status == 1)
                                                    <a href="{{ route('admin.category.active', $category->id) }}" class="label label-info">Hiển thị</a>
                                                @else
                                                    <a href="{{ route('admin.category.active', $category->id) }}" class="label label-default">Ẩn</a>
                                                @endif
                                            </td>
                                            <td>
                                                @if ($category->c_hot == 1)
                                                    <a href="{{ route('admin.category.hot', $category->id) }}" class="label label-info">Nổi bật</a>
                                                @else
                                                    <a href="{{ route('admin.category.hot', $category->id) }}" class="label label-default">Không nổi bật</a>
                                                @endif
                                            </td>
                                            <td>{{  $category->created_at }}</td>
                                            <td>
                                                <a href="{{ route('admin.category.update', $category->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                                                <a href="{{  route('admin.category.delete', $category->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xoá</a>
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
                    {!! $categories->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
        </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
