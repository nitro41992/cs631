<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Reserves;
use App\Copy;
use App\Reader;
use Faker\Generator as Faker;
use Carbon\Carbon;


$factory->define(Reserves::class, function (Faker $faker) {

    $compkeys = Copy::select('document_id', 'copy_no' , 'lib_id')->get()->toArray();
    $compkey = $faker->unique(true)->randomElement($compkeys);

    $readers = Reader::all()->pluck('reader_id')->toArray();

    $time = Carbon::createFromTimestamp($faker->dateTimeBetween($startDate = '-1 days', $endDate = 'now', $timezone = 'EST')->getTimeStamp()) ;
    return [
        'reader_id' => $faker->randomElement($readers),
        'document_id' => $compkey['document_id'],
        'copy_no' => $compkey['copy_no'],
        'lib_id' => $compkey['lib_id'],
        'd_time' =>  $time
    ];
});
