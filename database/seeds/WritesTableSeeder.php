<?php

use Illuminate\Database\Seeder;

class WritesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Writes::class, 50)->create()->each(function ($writes) {
        });
    }
}
