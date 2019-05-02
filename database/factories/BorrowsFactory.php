<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Borrows;
use App\Reserves;
use App\Copy;
use App\Reader;
use Faker\Generator as Faker;
use Carbon\Carbon;

$factory->define(Borrows::class, function (Faker $faker) {

    $compkeys = Copy::select('document_id', 'copy_no' , 'lib_id')
                ->whereNotIn( DB::raw('(document_id, copy_no, lib_id)'), function($query)
                    {
                        $query->select('document_id', 'copy_no', 'lib_id')
                              ->from('reserves');
                    })
                ->get()
                ->toArray();

    $compkey = $faker->unique()->randomElement($compkeys);

    $readers = Reader::all()->pluck('reader_id')->toArray();

    //$date = Carbon::now();
    $start = Carbon::createFromTimestamp($faker->dateTimeBetween($startDate = '-30 days', $endDate = 'now', $timezone = 'EST')->getTimeStamp()) ;
    $end= Carbon::createFromFormat('Y-m-d H:i:s', $start)->addDays(19);
    
    return [

        'reader_id' => $faker->randomElement($readers),
        'document_id' => $compkey['document_id'],
        'copy_no' => $compkey['copy_no'],
        'lib_id' => $compkey['lib_id'],
        'bd_time'  => $start,//$date->addDays(rand(-1,-35))->format('Y-m-d H:i:s'),
        'rd_time'  => $end//$date->addDays(20)->format('Y-m-d H:i:s')

    ];
});
