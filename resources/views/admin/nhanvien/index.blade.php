@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý nhân viên</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active"><a> List</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                @if(get_data_user('admins','level')==1)
                <div class="box-header">
                    <h3 class="box-title"><a href=" {{ route('admin.nhanvien.create') }} " class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>
                </div>
                @endif
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Level</th>
                                    <th>Chức vụ</th>
                                    <th>Action</th>
                                </tr>
                                @if(isset($boss))
                                    @foreach($boss as $boss)
                                        <tr>
                                            <td> {{ $boss->id }} </td>
                                            <td> {{ $boss->name }} </td>
                                            <td>{{ $boss->email }}</td>
                                            <td>{{ $boss->phone }}</td>
                                            <td><p class="btn btn-danger btn-sm"><i class="fa fa-star"></i>Giám đốc </p> </td>
                                            <td><p class="btn btn-info btn-sm"><i class="fa fa-check"></i>Toàn quyền</p> </td>
                                        </tr>
                                    @endforeach
                                @endif
                                @if (isset($nhanvien))
                                    @foreach($nhanvien as $user)
                                        <tr>
                                            <td>{{ $user->id }}</td>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->email }}</td>
                                            <td>{{ $user->phone }}</td>
                                            @if($user->level !=1)
                                                <td><p class="btn btn-success btn-sm"> Nhân viên </p></td>
                                            @else
                                                <td class="btn btn-danger btn-sm"><i class="fa fa-star"></i>Giám đốc </td>
                                            @endif
                                            <td>
                                                <p class="btn btn-warning btn-sm"><i class="fa fa-check"></i>Check đơn hàng</p>
                                            </td>
                                            <td>
                                                @if(get_data_user('admins','level')==1)
                                                    <a href="{{ route('admin.user.update', $user->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
                                                    <a href="{{  route('admin.nhanvien.delete', $user->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                                @endif
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
                    {{-- {!! $nhanvien->links() !!} --}}
                </div>
                <!-- /.box-footer-->
            </div>
        </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
