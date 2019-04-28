<?php

use Illuminate\Database\Seeder;

class JournalIssuesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\JournalIssue::class, 50)->create()->each(function ($journalIssue) {
        });
    }
}
