<?php

namespace Database\Seeders;

use App\Models\Roles;
// use CreateAppModelsRolesTable;
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
        // \App\Models\User::factory(10)->create();
        $this->call(RolesTableSeeder::class);
        $this->call(UserTableSeeder::class);

    }
}
