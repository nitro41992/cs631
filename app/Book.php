<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $primaryKey = 'id';

    protected $fillable = [
        'isbn'
    ];

    public function document() {

        return $this->belongsTo('App\Document');

    }

    public function writes() {

        return $this->hasMany('App\Writes');

    }
}
