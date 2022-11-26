<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert(
        [
            [
                'name'=>'Man Fashion',
                'image'=>'1669225059.jpg',
                'description'=>'this is man fashion description',
                'status'=>'1',
            ],

            [
            'name'=>'Woman Fashion',
            'image'=>'1669225059.jpg',
            'description'=>'this is Woman fashion description',
            'status'=>'1',
            ]
        ]
        );
    }
}
