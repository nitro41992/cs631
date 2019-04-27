<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Borrows extends Model
{
    protected $primaryKey = 'bor_number';

    protected $fillable = [
        'bd_time', 'rd_time'
    ];

    public function copy() {

        return $this->belongsTo('App\Copy');

    }
}
