<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\User::create([
           'name' => 'admin',
           'email' => 'coldman9910@gmail.com',
           'password' => bcrypt('123123'),

        ]);
    }
}
