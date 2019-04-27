<?php

use Illuminate\Database\Seeder;

class ReadersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Reader::class, 50)->create()->each(function ($reader) {
        });
    }
}
