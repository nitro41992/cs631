<?php

use Illuminate\Database\Seeder;
use \App\Document;

class PublishersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Publisher::class, 50)->create()->each(function ($publisher) {
            //factory(Document::class, 50)->create(['publisher_id'=>$publisher->id]);
        });

    }
}
