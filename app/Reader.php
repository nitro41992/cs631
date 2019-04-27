<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reader extends Model
{
    protected $primaryKey = 'reader_id';

    protected $fillable = [
        'r_type', 'r_name', 'address'
    ];

    public function borrows() {

        return $this->hasMany('App\Borrows');

    }

    public function reserves() {

        return $this->hasMany('App\Reserves');

    }
}
