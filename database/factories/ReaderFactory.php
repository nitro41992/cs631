<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Reader;
use Faker\Generator as Faker;

$factory->define(Reader::class, function (Faker $faker) {
    return [
        'r_type' => $faker->randomElement(['student', 'senior citizen', 'staff' , 'other']),
        'r_name' => $faker->firstName($gender = 'null').' '.$faker->lastName,
        'address' => $faker->address,
    ];
});
