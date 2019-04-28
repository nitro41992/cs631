<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JournalIssue extends Model
{
    protected $primaryKey = 'id';

    protected $fillable = [
        'scope', 
    ];

    public function invEditors() {

        return $this->hasMany('App\InvEditors');

    }

    public function journalVolume() {

        return $this->belongsTo('App\JournalVolume');

    }
}
