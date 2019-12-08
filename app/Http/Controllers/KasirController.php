<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kasir;

class KasirController extends Controller
{
    public function data_kasir($id){
        $kasir = Kasir::find($id);
        

        return view('kasir.data_kasir',compact('kasir'));
    }
}
