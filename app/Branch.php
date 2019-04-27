<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    protected $primaryKey = 'lib_id';

    protected $fillable = [
        'l_name', 'l_location',
    ];

    public function copy() {

        return $this->hasMany('App\Copy');

    }
}
