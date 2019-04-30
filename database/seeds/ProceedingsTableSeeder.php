<?php

use Illuminate\Database\Seeder;

class ProceedingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Proceedings::class, 10)->create()->each(function ($proceedings) {
        });
    }
}
