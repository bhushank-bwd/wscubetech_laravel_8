<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Customer;
use Faker\Factory as Faker;
class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        // $customer = new Customer;
        // $customer->name = "name";
        // $customer->email = "email@gmailc.oc";
        // $customer->address = "address";
        // $customer->password = md5("1212115");
        for($i=0;$i<100;$i++){
            $customer = new Customer;
            $customer->name = $faker->name;
            $customer->email = $faker->email;
            $customer->address = $faker->address;
            $customer->password = md5($faker->password);
            $customer->save();
        }
        
    }
}
