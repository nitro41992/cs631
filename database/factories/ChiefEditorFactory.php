<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\ChiefEditor;
use Faker\Generator as Faker;

$factory->define(ChiefEditor::class, function (Faker $faker) {
    return [
        'e_name' => $faker->firstName($gender = 'null'),
    ];
});
