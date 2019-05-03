<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Author;
use Faker\Generator as Faker;

$factory->define(Author::class, function (Faker $faker) {
    return [
        'a_name' => $faker->firstName($gender = 'null') . ' ' . $faker->lastName(),
    ];
});
