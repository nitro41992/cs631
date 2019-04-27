<?php

use Illuminate\Database\Seeder;

class ReservesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Reserves::class, 50)->create()->each(function ($reserves) {
        });
    }
}
