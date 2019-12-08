<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\Kasir;

class OrderController extends Controller
{
    public function index(){
        return view('order.index');
    }
    public function data_order(Request $request){
        if($request->has('cari')){
            //pencarian seharusnya berdasarkan nama kasir bukan id kasir, harus diperbaiki
            $order = Order::where('kasir_id','LIKE','%'.$request->cari.'%')->orderby('kode_transaksi','desc');
        }else{
            $order = Order::orderby('kode_transaksi','desc');  
        }
        $order = $order->paginate(5);
        // dd($order); untuk melihat isi seperi var dump
        $order->appends($request->only('cari'));
        return view('order.data_order',compact('order'));
    }

    public function ShowFormCreate(){
        $kasir = Kasir::all();
        return view('order.create',compact('kasir'));
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
        $kasir = Kasir::all();
        // $kasir = Order::find($id);
        return view('order.update',compact('order','kasir'));
    }

    public function updating(Request $request, $id){
        $order=Order::find($id);
        $order->update($request->all());
        return redirect('/order')->with('Success','Data berhasil diubah!!');
    }


}
