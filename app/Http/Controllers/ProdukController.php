<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Produk;
use App\Order;

class ProdukController extends Controller
{
    public function data_produk(){
        $produk = Produk::all();
        return view('produk.index',compact('produk'));
    }
    public function ShowOrder($id){
        $produk = Produk::find($id);
        $order = Order::all();
        return view('produk.dataorder',compact('produk','order'));
    }

    public function tambahOrder(Request $request, $id){
        $produk = Produk::find($id);
        $produk->order()->sync($request->order);//order di samping berdasarkan name yang ada di form
        return redirect('produk/'.$id.'/dataorder')->with('Success','Data berhasil ditambahkan!');
    }
}
