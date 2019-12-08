@extends('layouts.master')

@section('title','Data Order') 

@section('content_header','Data Order')

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
            <a href="{{url('#')}}" class="btn btn-block bg-gradient-primary btn-sm nav-icon fas fa-edit"> Tambah Data</a>
        </div>

            <div class="card-tools">
                <form action="#" method="get">
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
        <h3>{{$produk->nama}} : Data History Order</h3>
        <table class="table table-bordered">
        <thead>                  
            <tr>
            <th>Kode Transaksi</th>
            <th>Nama Kasir</th>
            <th>Total</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($produk->order as $ord)
            <tr>
                <td>{{$ord->kode_transaksi}}</td>
                <td>{{$ord->kasir->nama}}</td>
                <td>{{$ord->total}}</td>
            </tr>
            @endforeach
        </tbody>
        </table>
        <form role="form" action="/produk/{{$produk->id}}/dataorder" method="post">
        {{csrf_field()}}
        <div class="card-body">
            <div class="form-group">
                <label>Tambah Order :</label>
                @foreach ($order as $ord)
                    @php $ada = false @endphp
                    @foreach($produk->order as $prod_ord)
                        @if($ord->id == $prod_ord->id)
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="order[]"  value="{{$ord->id}}" checked>
                                <label  class="form-check-label">{{$ord->kode_transaksi}} || {{$ord->kasir->nama}} || {{$ord->total}}</label>
                            </div>
                            @php $ada = true @endphp
                            @break
                        @endif
                    @endforeach
                    @if(!$ada)
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="order[]"  value="{{$ord->id}}">
                            <label  class="form-check-label">{{$ord->kode_transaksi}} || {{$ord->kasir->nama}} || {{$ord->total}}</label>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Tambah</button>
        </div>
        </form>
    </div>
    <!-- /.card-body -->
    <div class="card-footer clearfix">
            {{-- {{$kasir->links()}} --}}
    </div>
</div>
@endsection


