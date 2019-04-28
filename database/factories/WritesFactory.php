<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Writes;
use App\Book;
use App\Author;
use Faker\Generator as Faker;

$factory->define(Writes::class, function (Faker $faker) {
    $compBookKeys = Book::all()->pluck('document_id')->toArray();
    $compAuthorsKeys = Author::all()->pluck('author_id')->toArray();
    
    $newKeys = array();
    for ($i=0; $i<500; $i++) {
        $compkey['document_id'] = $faker->randomElement($compBookKeys);
        $compkey['author_id'] = $faker->randomElement($compAuthorsKeys);
        $newKeys[] = $compkey;
    }

    $newKeys = array_unique($newKeys, SORT_REGULAR);
    $compkey = $faker->unique()->randomElement($newKeys);

    return [

        'document_id' => $compkey['document_id'],
        'author_id' => $compkey['author_id'],

    ]; 
});
