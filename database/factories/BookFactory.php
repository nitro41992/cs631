<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Book;
use App\Document;
use Faker\Generator as Faker;

$factory->define(Book::class, function (Faker $faker) {
    $documents = Document::all()->pluck('document_id')->toArray();
    return [
        'document_id' => $faker->unique()->randomElement($documents),
        'isbn' => $faker->isbn13,
    ];
});
