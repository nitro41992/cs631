<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Document;
use App\Publisher;
use Faker\Generator as Faker;

$factory->define(Document::class, function (Faker $faker) {
    $publishers = Publisher::all()->pluck('publisher_id')->toArray();
    return [
        'title' => $faker->text($maxNbChars = 50),
        'p_date' => $faker->dateTime($max = 'now', $timezone = 'EDT'),
        'publisher_id' => $faker->randomElement($publishers),
    ];
});
