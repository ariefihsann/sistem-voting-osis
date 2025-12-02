<?php

namespace Database\Seeders;
use App\Models\User;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
public function run()
{
    // ADMIN
    User::create([
        'name' => 'admin',
        'email' => 'admin@osis.com',
        'password' => bcrypt('admin123'),
        'role' => 'admin'
    ]);

    // 3 akun laptop (malah boleh pakai akun yang sama juga boleh)
    User::create([
        'name' => 'laptop1',
        'email' => 'laptop1@osis.com',
        'password' => bcrypt('123456'),
        'role' => 'user'
    ]);

    User::create([
        'name' => 'laptop2',
        'email' => 'laptop2@osis.com',
        'password' => bcrypt('123456'),
        'role' => 'user'
    ]);

    User::create([
        'name' => 'laptop3',
        'email' => 'laptop3@osis.com',
        'password' => bcrypt('123456'),
        'role' => 'user'
    ]);
}
}
