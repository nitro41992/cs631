<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\JournalIssue;
use App\JournalVolume;
use App\InvEditor;
use Faker\Generator as Faker;
use Illuminate\Support\Facades\DB;

$factory->define(JournalIssue::class, function (Faker $faker) {
    $journalVolumes = JournalVolume::all()->pluck('document_id')->toArray();

    
    $compkeys = JournalVolume::select('document_id')->get()->toArray();
    
    $newKeys = array();
    for ($i=0; $i<500; $i++) {
        $compkey['document_id'] = $faker->randomElement($journalVolumes);
        $compkey['issue_no'] = $faker->numberBetween($min = 1, $max = 10);
        $newKeys[] = $compkey;
    }

    $newKeys = array_unique($newKeys, SORT_REGULAR);
    $compkey = $faker->unique()->randomElement($newKeys);

    return [

        'document_id' => $compkey['document_id'],
        'issue_no' => $compkey['issue_no'],
        'scope' => $faker->text($maxNbChars = 500),

    ]; 
});
