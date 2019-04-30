<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\JournalVolume;
use App\Document;
use App\ChiefEditor;
use Faker\Generator as Faker;

$factory->define(JournalVolume::class, function (Faker $faker) {

    $documents = Document::all()
        ->whereNotIn('document_id', DB::table('proceedings')->pluck('document_id'))
        ->pluck('document_id')
        ->toArray();
    
    $editors = ChiefEditor::all()->pluck('editor_id')->toArray();

    return [

        'document_id' => $faker->randomElement($documents),
        'j_volume' => $faker->numberBetween($min = 1, $max = 20),
        'editor_id' => $faker->randomElement($editors)

    ];
});
