<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InvEditor extends Model
{
    protected $primaryKey = 'id';   

    public function journalIssue() {

        return $this->belongsTo('App\JournalIssue');

    }
}
