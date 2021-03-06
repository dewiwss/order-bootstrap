@extends('layouts.master')

@section('title','Data Kasir') 

@section('content_header','Data Kasir')

@section('content')

@if(session('Success'))
    <div class="card bg-success">
        <div class="card-header">
        <h3 class="card-title">Success</h3>

        <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i>
            </button>
        </div>
        <!-- /.card-tools -->
        </div>
        <!-- /.card-header -->
        <div class="card-body">
        {{session('Success')}}
        </div>
        <!-- /.card-body -->
    </div>
@endif
<div class="card">
    <div class="card-header">
        <div class="card-title">
            <a href="{{url('/kasir/create')}}" class="btn btn-block bg-gradient-primary btn-sm nav-icon fas fa-edit"> Tambah Data</a>
        </div>

            <div class="card-tools">
                <form action="/kasir" method="get">
                <div class="input-group input-group-sm" style="width: 150px;">
                <input type="text" class="form-control float-right" placeholder="Search" name="cari">
                <div class="input-group-append">
                    <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                </div>
                </div>
                </form>
            </div>
            </div>
    <!-- /.card-header -->
    <div class="card-body">
        <h3>Nama Kasir : {{$kasir->nama}}</h3>
        <table class="table table-bordered">
        <thead>                  
            <tr>
            <th>Kode Transaksi</th>
            <th>Produk</th>
            <th>Total</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($kasir->order as $ord)
            <tr>
                <td>{{$ord->kode_transaksi}}</td>
                <td>{{$ord->produk}}</td>
                <td>{{$ord->total}}</td>
            </tr>
            @endforeach
        </tbody>
        </table>
    </div>
    <!-- /.card-body -->
    <div class="card-footer clearfix">
            {{-- {{$kasir->links()}} --}}
    </div>
    </div>
@endsection


