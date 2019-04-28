<?php

use Illuminate\Database\Seeder;

class ChiefEditorsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\ChiefEditor::class, 5)->create()->each(function ($chiefEditor) {
        });
    }
}
