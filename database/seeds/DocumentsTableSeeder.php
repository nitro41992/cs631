<?php

use App\Document;
use App\Publisher;
use Illuminate\Database\Seeder;

class DocumentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Document::class, 50)->create()->each(function ($documents) {

        });
    }
}
