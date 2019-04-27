<?php

use Illuminate\Database\Seeder;

class CopiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Copy::class, 50)->create()->each(function ($copy) {
        });
    }
}
