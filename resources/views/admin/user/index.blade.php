@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý người dùng</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.user.index') }}"> Người dùng</a></li>
            <li class="active"><a> Danh sách</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Tên</th>
                                    <th>Email</th>
                                    <th>Điện thoại</th>
                                    <th>Thời gian</th>
                                    <th>Hành động</th>
                                </tr>
                                @if (isset($users))
                                    @foreach($users as $user)
                                        <tr>
                                            <td>{{ $user->id }}</td>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->email }}</td>
                                            <td>{{ $user->phone }}</td>
                                            <td>{{ $user->created_at }}</td>
                                            <td>
                                                {{-- <a href="{{ route('admin.user.update', $user->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a> --}}
                                                <a href="{{  route('admin.user.delete', $user->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xoá</a>
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
                    {!! $users->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
        </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
