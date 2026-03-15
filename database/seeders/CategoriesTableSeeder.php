<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategoriesTableSeeder extends Seeder
{
    public function run()
    {
        $categories = [
            ['id' => 1, 'name' => 'Laptop', 'description' => 'Portable computers'],
            ['id' => 2, 'name' => 'Monitor', 'description' => 'Display screens'],
            ['id' => 3, 'name' => 'Server', 'description' => 'Data center equipment'],
            ['id' => 4, 'name' => 'Laptop (Old)', 'description' => 'Legacy laptops'],
            ['id' => 5, 'name' => 'Handphone', 'description' => 'Mobile devices'],
            ['id' => 6, 'name' => 'Furniture', 'description' => 'Desks and chairs'],
        ];

        foreach ($categories as $category) {
            Category::updateOrCreate(['id' => $category['id']], $category);
        }
    }
}
