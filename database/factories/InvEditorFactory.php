<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\InvEditor;
use App\Document;
use App\JournalIssue;
use Faker\Generator as Faker;

$factory->define(InvEditor::class, function (Faker $faker) {
    $compDocIssueKeys = JournalIssue::select('document_id', 'issue_no')->get()->toArray();

    $newKeys = array();
    foreach ($compDocIssueKeys as $compkey) {
        $compkey['ie_name'] = $faker->firstName($gender = 'null').' '.$faker->lastName();
        $newKeys[] = $compkey;
    }

    $newKeys = array_unique($newKeys, SORT_REGULAR);
    $compkey = $faker->unique()->randomElement($newKeys);

    return [
        'document_id' => $compkey['document_id'],
        'issue_no' => $compkey['issue_no'],
        'ie_name' => $compkey['ie_name'],
    ];
});
