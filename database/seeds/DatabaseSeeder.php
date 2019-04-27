<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);
        $this->call(PublishersTableSeeder::class);
        $this->call(DocumentsTableSeeder::class);
        $this->call(BranchesTableSeeder::class);
        $this->call(CopiesTableSeeder::class);
    }
}
