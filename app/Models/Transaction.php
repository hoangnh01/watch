<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Transaction extends Model
{
    protected $guarded = [''];

    protected $status = [
        '1' => [
            'class' => 'default',
            'name'  => 'Tiếp nhận'
        ],
        '2' => [
            'class' => 'info',
            'name'  => 'Đang vận chuyển'
        ],
        '3' => [
            'class' => 'success',
            'name'  => 'Hoàn thành'
        ],
        '-1' => [
            'class' => 'danger',
            'name'  => 'Đã Huỷ'
        ],
    ];

    public function getStatus()
    {
        return Arr::get($this->status, $this->tst_status,"[N\A]");
    }

    public function user()
    {
        return $this->belongsTo(User::class,'tst_user_id','id');
    }
    public function province()
	{
		return $this->belongsTo(Province::class,'tst_province_id');
	}
	public function district()
	{
		return $this->belongsTo(District::class,'tst_district_id');
	}
}
