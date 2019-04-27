<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $primaryKey = 'document_id';

    protected $fillable = [
        'title', 'p_date',
    ];

    public function publisher() {

        return $this->belongsTo('App\Publisher');

    }

    public function copy() {

        return $this->hasMany('App\Copy');

    }

}
