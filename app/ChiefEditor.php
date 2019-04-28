<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChiefEditor extends Model
{
    protected $primaryKey = 'editor_id';

    protected $fillable = [
        'e_name', 
    ];

    public function journal_volume() {

        return $this->hasMany('App\JournalVolume');

    }

}
