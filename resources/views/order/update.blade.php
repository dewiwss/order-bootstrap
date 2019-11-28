@extends('layouts.master')

@section('title','Data Order') 

@section('content_header','Data Order')

@section('content')
<div class="card card-primary">
<div class="card-header">
    <h3 class="card-title">Update Data Order</h3>
</div>
<!-- /.card-header -->
<!-- form start -->
<form role="form" action="/order/{{$order->id}}/updating" method="post">
    {{csrf_field()}}
    <div class="card-body">
        <div class="form-group">
            <label for="kode_transaksi">Kode Transaksi</label>
            <input type="text" name="kode_transaksi" value="{{$order->kode_transaksi}}" id="" placeholder="Masukkan Kode Transaksi.." class="form-control">
        </div>
        <div class="form-group">
            <label for="nama_customer">Nama Customer</label>
            <input type="text" name="nama_customer" value="{{$order->nama_customer}}" id="" placeholder="Nama Customer.." class="form-control">
        </div>
        <div class="form-group">
            <label for="produk">Produk</label>
            <input type="text" name="produk" value="{{$order->produk}}" id="" placeholder="Produk.." class="form-control">
        </div>
        <div class="form-group">
            <label for="total">Total Order</label>
            <input type="text" name="total" value="{{$order->total}}" id="" placeholder="Total.." class="form-control">
        </div>
    </div>
    <div class="card-footer">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form>
</div>

@endsection