<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Copy extends Model
{
    protected $primaryKey = 'id';

    protected $fillable = [
        'position',
    ];

    public function branch() {

        return $this->belongsTo('App\Branch');

    }
}
