<?php

use Illuminate\Database\Seeder;

class JournalVolumesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\JournalVolume::class, 10)->create()->each(function ($journalVolume) {
        });
    }
}
