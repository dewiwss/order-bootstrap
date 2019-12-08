<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kasir extends Model
{
    protected $table = 'kasir';
    protected $fillable = ['nama','email','alamat'];

    public function order(){
        return $this->hasMany(Order::class);
    }

}
