<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Borrows;
use App\Reserves;
use App\Copy;
use App\Reader;
use Faker\Generator as Faker;
use Carbon\Carbon;

$factory->define(Borrows::class, function (Faker $faker) {

    $ckeys = Copy::select('document_id', 'copy_no' , 'lib_id')->get()->toArray();
    $rkeys = Reserves::select('document_id', 'copy_no' , 'lib_id')->get()->toArray();
      
    $compkeys =    arrayRecursiveDiff($ckeys,$rkeys);

    //$compkeys = array_diff($ckeys, $rkeys);

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

function arrayRecursiveDiff($aArray1, $aArray2) {
    $aReturn = array();
  
    foreach ($aArray1 as $mKey => $mValue) {
      if (array_key_exists($mKey, $aArray2)) {
        if (is_array($mValue)) {
          $aRecursiveDiff = arrayRecursiveDiff($mValue, $aArray2[$mKey]);
          if (count($aRecursiveDiff)) { $aReturn[$mKey] = $aRecursiveDiff; }
        } else {
          if ($mValue != $aArray2[$mKey]) {
            $aReturn[$mKey] = $mValue;
          }
        }
      } else {
        $aReturn[$mKey] = $mValue;
      }
    }
    return $aReturn;
  } 