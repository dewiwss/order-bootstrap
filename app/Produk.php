<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    protected $table = 'produk';
    protected $fillable = ['nama','harga'];

    public function order(){
        return $this->belongsToMany(Order::class,'orders_produk')->withTimeStamps();
    }
}
