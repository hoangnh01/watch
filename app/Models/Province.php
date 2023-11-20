<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Province extends Model
{
    protected $table   = 'db_province';
    protected $guarded = ['*'];
    public function district()
	{
		return $this->hasMany(District::class,'provinceid','id');
	}
}
