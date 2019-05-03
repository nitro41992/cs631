<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Proceedings;
use App\Document;
use Faker\Generator as Faker;

$factory->define(Proceedings::class, function (Faker $faker) {
    $documents = Document::all()->pluck('document_id')->toArray();
    return [
        'document_id' => $faker->randomElement($documents),
        'c_date' => $faker->dateTime($max = 'now', $timezone = 'EDT'),
        'c_location' => $faker->address,
        'c_editor' => $faker->firstName.$faker->lastName
    ];
});
