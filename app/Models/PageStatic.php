<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class PageStatic extends Model
{
    protected $table = 'statics';
    protected $guarded = [''];

    protected $type = [
        1 => 'Hướng dẫn mua hàng',
        2 => 'Chính sách đổi trả',
        3 => 'Chăm sóc khách hàng',
        4 => 'Chính sách bảo mật',
        5 => 'Chính sách bảo hành',
    ];

    public function getType()
    {
        return Arr::get($this->type, $this->s_type,"[N\A]");
    }
}
