<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Writes extends Model
{
    protected $primaryKey = 'id';

    public function author() {

        return $this->hasMany('App\Author');

    }

    public function book() {

        return $this->hasMany('App\Book');

    }
}
