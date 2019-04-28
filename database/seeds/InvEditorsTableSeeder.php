<?php

use Illuminate\Database\Seeder;

class InvEditorsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\InvEditor::class, 50)->create()->each(function ($invEditor) {
        });
    }
}
