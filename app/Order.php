<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    protected $fillable = ['kode_transaksi','kasir_id','produk','total'];

    public function kasir(){
        return $this->belongsTo(Kasir::class);
    }

    public function produk(){
        return $this->belongsToMany(Produk::class,'orders_produk'); //orders_produk adalah nama tabel pivot
    }
}
