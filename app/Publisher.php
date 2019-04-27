<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Publisher extends Model
{
    protected $primaryKey = 'publisher_id';

    protected $fillable = [
        'pub_name', 'address',
    ];

    public function document() {

        return $this->hasOne('App\Document');

    }
}
