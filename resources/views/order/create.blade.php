@extends('layouts.master')

@section('title','Data Order') 

@section('content_header','Data Order')

@section('content')
<div class="card card-primary">
<div class="card-header">
    <h3 class="card-title">Tambah Data Order</h3>
</div>
<!-- /.card-header -->
<!-- form start -->
<form role="form" action="/order/creating" method="post">
    {{csrf_field()}}
    <div class="card-body">
        <div class="form-group">
            <label for="kode_transaksi">Kode Transaksi</label>
            <input type="text" name="kode_transaksi" id="" placeholder="Masukkan Kode Transaksi.." class="form-control">
        </div>

        <div class="form-group">
            <label for="kasir_id">Nama Kasir</label>
            <select class="form-control select2bs4" name="kasir_id" style="width: 100%;">
                @foreach ( $kasir as $ksr )
                    <option value="{{$ksr->id}}">{{$ksr->nama}}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="produk">Produk</label>
            <input type="text" name="produk" id="" placeholder="Produk.." class="form-control">
        </div>
        <div class="form-group">
            <label for="total">Total Order</label>
            <input type="text" name="total" id="" placeholder="Total.." class="form-control">
        </div>
    </div>
    <div class="card-footer">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form>
</div>
@endsection


    