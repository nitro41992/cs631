<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reserves extends Model
{
    protected $primaryKey = 'res_number';

    protected $fillable = [
        'd_time',
    ];

    public function copy() {

        return $this->belongsTo('App\Copy');

    }
}
