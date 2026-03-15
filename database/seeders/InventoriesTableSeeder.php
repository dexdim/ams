<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Inventory;
use Carbon\Carbon;
use Illuminate\Support\Str;

class InventoriesTableSeeder extends Seeder
{
    public function run()
    {
        $now = Carbon::now();
        $month = $now->format('m');
        $year = $now->format('Y');

        // Sample data pools for variety
        $brands = ['Apple', 'Dell', 'HP', 'Logitech', 'IKEA', 'Samsung', 'Sony', 'Lenovo'];
        $statuses = ['Available', 'Deployed', 'Storage', 'Broken', 'In Service'];
        $categories = [1, 2, 7, 8, 22, 23]; // From your CategoriesTableSeeder
        $depts = ['IT', 'HR', 'Finance', 'Marketing', 'Operations'];

        for ($i = 1; $i <= 50; $i++) {
            $catId = $categories[array_rand($categories)];

            // Logic: A for IDs < 20 (Electronics), B for 20+ (Furniture/Non-Elec)
            $prefix = ($catId < 20) ? 'A' : 'B';

            // Logic: I for Mobile (Laptops/Phones), O for Stationary (Servers/Furniture)
            $type = in_array($catId, [1, 8, 22]) ? 'I' : 'O';

            $order = str_pad($i, 2, '0', STR_PAD_LEFT);
            $idcode = "{$prefix}{$catId}/{$month}/{$year}/{$type}/{$order}";

            Inventory::create([
                'idcode' => $idcode,
                'category_id' => $catId,
                'description' => "Unit description for " . Str::random(5),
                'brand' => $brands[array_rand($brands)],
                'serialnumber' => strtoupper(Str::random(10)),
                'supplier' => 'Global Tech Vendor ' . rand(1, 5),
                'purchasecost' => rand(1000000, 20000000), // Random cost in IDR/Units
                'purchasedate' => $now->subDays(rand(1, 365))->format('Y-m-d'),
                'license' => rand(0, 1) ? 'Standard License' : null,
                'name' => 'User ' . rand(101, 199),
                'email' => 'user' . $i . '@example.com',
                'dept' => $depts[array_rand($depts)],
                'status' => $statuses[array_rand($statuses)],
                'notes' => 'Generated via Seeder on ' . $now->toDateString(),
                'history' => 'Received from warehouse.',
                'checkdate' => $now->format('Y-m-d'),
                'checkedby' => 'Admin User',
            ]);
        }
    }
}
