<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Publisher;
use Faker\Generator as Faker;

$factory->define(Publisher::class, function (Faker $faker) {

    return [
        'pub_name' => $faker->unique()->firstName($gender = 'null').' '.$faker->unique()->lastName,
        'address' => $faker->unique()->address,
    ];
});
