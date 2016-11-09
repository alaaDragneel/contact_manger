<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ContactsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         DB::table('users')->truncate();
         $users = [];
         for ($i=0; $i <= 3; $i++) {
              $users[] = [
                   'name' => 'user'.$i,
                   'email' => 'user'.$i.'@gmail.com',
                   'password' => bcrypt('666666'),
              ];
         }
         DB::table('users')->insert($users);

         DB::table('contacts')->truncate();

        $faker = Faker::create();
        $contacts = [];

        foreach(range(1, 20) as $index){
             $contacts[] = [
                  'name' => $faker->name,
                  'email' => $faker->email,
                  'phone' => $faker->phoneNumber,
                  'address' => "{$faker->streetName} {$faker->postcode} {$faker->city}",
                  'company' => $faker->company,
                  'group_id' => rand(1, 3),
                  'image' => 'assets/img/avatar5.png',
                  'user_id' => rand(1, 3),
                  'created_at' => new DateTime,
                  'updated_at' => new DateTime,
             ];
        }
        DB::table('contacts')->insert($contacts);
    }
}
