<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    protected $table   = 'db_district';
    protected $guarded = ['*'];
    public function province()
	{
		return $this->belongsTo(Province::class,'provinceid','id');
	}
}
