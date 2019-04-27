<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Borrows;
use App\Copy;
use App\Reader;
use Faker\Generator as Faker;
use Carbon\Carbon;

$factory->define(Borrows::class, function (Faker $faker) {

    $compkeys = Copy::select('document_id', 'copy_no' , 'lib_id')->get()->toArray();
    $compkey = $faker->randomElement($compkeys);

    $readers = Reader::all()->pluck('reader_id')->toArray();

    $date = Carbon::now();


    return [

        'reader_id' => $faker->randomElement($readers),
        'document_id' => $compkey['document_id'],
        'copy_no' => $compkey['copy_no'],
        'lib_id' => $compkey['lib_id'],
        'bd_time'  => $date->format('Y-m-d H:i:s'),
        'rd_time'  => $date->addWeeks(rand(1, 52))->format('Y-m-d H:i:s')

    ];
});
