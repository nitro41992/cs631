<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JournalVolume extends Model
{
    protected $primaryKey = 'id';

    protected $fillable = [
        'j_volume', 
    ];

    public function journalIssue() {

        return $this->hasMany('App\JournalIssue');

    }

    public function document() {

        return $this->belongsTo('App\Document');

    }
}
