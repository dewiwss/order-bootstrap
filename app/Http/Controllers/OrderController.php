<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;

class OrderController extends Controller
{
    public function index(){
        return view('order.index');
    }
    public function data_order(Request $request){
        if($request->has('cari')){
            $order = Order::where('nama_customer','LIKE','%'.$request->cari.'%')->orderby('kode_transaksi','desc');
        }else{
            $order = Order::orderby('kode_transaksi','desc');
        }
        $order = $order->paginate(5);
        // dd($order); untuk melihat isi seperi var dump
        $order->appends($request->only('cari'));
        return view('order.data_order',compact('order'));
    }

    public function creating(Request $request){
        Order::create($request->all());
        return redirect('/order')->with('Success','Data Berhasil Disimpan!!');
    }

    public function deleting($id){
        $order = Order::find($id);
        $order->delete();
        return redirect('/order')->with('Success','Data berhasil dihapus!!');
    }

    public function update($id){
        $order = Order::find($id);
        return view('order.update',compact('order'));
    }

    public function updating(Request $request, $id){
        $order=Order::find($id);
        $order->update($request->all());
        return redirect('/order')->with('Success','Data berhasil diubah!!');
    }


}
