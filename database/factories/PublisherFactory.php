<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Publisher;
use Faker\Generator as Faker;

$factory->define(Publisher::class, function (Faker $faker) {

    return [
        'pub_name' => $faker->firstName($gender = 'null'),
        'address' => $faker->address,
    ];
});
