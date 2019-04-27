<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Copy;
use App\Document;
use App\Branch;
use Faker\Generator as Faker;

$factory->define(Copy::class, function (Faker $faker) {
    $documents = Document::all()->pluck('document_id')->toArray();
    $branches = Branch::all()->pluck('lib_id')->toArray();
    return [
        'document_id' => $faker->randomElement($documents),
        'copy_no' => $faker->numberBetween($min = 1, $max = 100),
        'lib_id' => $faker->randomElement($branches),
        'position' => $faker->numberBetween($min = 0, $max = 1).
            $faker->numberBetween($min = 0, $max = 9).
            $faker->numberBetween($min = 0, $max = 9).
            strtoupper($faker->randomLetter).
            $faker->numberBetween($min = 0, $max = 9).
            $faker->numberBetween($min = 0, $max = 9)

    ];
});
