<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proceedings extends Model
{
    protected $primaryKey = 'id';

    protected $fillable = [
        'c_date', 'c_location', 'c_editor'
    ];

    public function document() {

        return $this->belongsTo('App\Document');

    }
}
