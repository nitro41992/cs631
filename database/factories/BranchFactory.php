<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Branch;
use Faker\Generator as Faker;

$factory->define(Branch::class, function (Faker $faker) {
    return [
        'l_name' => $faker->text($maxNbChars = 10),
        'l_location' => $faker->address,
    ];
});
