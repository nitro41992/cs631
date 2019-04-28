<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Copy;
use App\Document;
use App\Branch;
use Faker\Generator as Faker;

$factory->define(Copy::class, function (Faker $faker) {
    $compDocumentKeys = Document::all()->pluck('document_id')->toArray();
    $compBranchKeys =  Branch::all()->pluck('lib_id')->toArray();

    $newKeys = array();
    for ($i=0; $i<500; $i++) {
        $compkey['document_id'] = $faker->randomElement($compDocumentKeys);
        $compkey['copy_no'] = $faker->numberBetween($min = 1, $max = 100);
        $compkey['lib_id'] = $faker->randomElement($compBranchKeys);
        $newKeys[] = $compkey;
    }

    $newKeys = array_unique($newKeys, SORT_REGULAR);
    $compkey = $faker->unique()->randomElement($newKeys);


    //$documents = Document::all()->pluck('document_id')->toArray();
    //$branches = Branch::all()->pluck('lib_id')->toArray();
    return [
        'document_id' => $compkey['document_id'],
        'copy_no' => $compkey['copy_no'],
        'lib_id' => $compkey['lib_id'],
        'position' => $faker->numberBetween($min = 0, $max = 1).
            $faker->numberBetween($min = 0, $max = 9).
            $faker->numberBetween($min = 0, $max = 9).
            strtoupper($faker->randomLetter).
            $faker->numberBetween($min = 0, $max = 9).
            $faker->numberBetween($min = 0, $max = 9)

    ];
});
