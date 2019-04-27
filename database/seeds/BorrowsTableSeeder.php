<?php

use Illuminate\Database\Seeder;

class BorrowsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Borrows::class, 50)->create()->each(function ($borrows) {
        });
    }
}
