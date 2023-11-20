@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Cập nhật sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang Chủ</a></li>
            <li><a href="{{  route('admin.product.index') }}"> Sản Phẩm</a></li>
            <li class="active"><a> Cập Nhật</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
    <div class="row">
        @include('admin.product.form')
    </div>
</section>
    <!-- /.content -->
@stop
