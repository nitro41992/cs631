<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    protected $primaryKey = 'author_id';

    protected $fillable = [
        'a_name'
    ];

    public function writes() {

        return $this->hasMany('App\Writes');

    }
}
