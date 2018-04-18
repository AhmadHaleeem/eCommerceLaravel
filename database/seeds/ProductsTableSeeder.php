<?php

use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        factory(\App\Product::class, 30)->create();
//        $p1 = [
//            'name' => 'Learn to build websites in HTML 5',
//            'image' => 'uploads/products/book1.png',
//            'price' => 5000,
//            'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s'
//        ];
//
//        $p2 = [
//            'name' => 'PHP development in depth',
//            'image' => 'uploads/products/book1.png',
//            'price' => 2400,
//            'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s'
//        ];
//
//
//
//        \App\Product::create($p1);
//        \App\Product::create($p2);

    }
}
