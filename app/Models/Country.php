<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $table = 'country';
    protected $guarded = ['id'];


    public function products()
    {
        return $this->hasMany(Product::class,'pro_country','id');
    }
}
