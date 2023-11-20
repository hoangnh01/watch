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
        \DB::table('admins')->insert([
            'name'     => 'Admin',
            'email'    => 'hoangnh2k1@gmail.com',
            'phone'    => '0389163152',
            'password' => Hash::make('123456789')
        ]);
    }
}
