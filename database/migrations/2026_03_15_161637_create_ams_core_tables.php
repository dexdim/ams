<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAmsCoreTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
{
    // 1. Create Users Table FIRST (if it doesn't exist)
    if (!Schema::hasTable('users')) {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('type')->default('User'); // From your User model
            $table->rememberToken();
            $table->timestamps();
        });
    }

    // 2. Create Categories
    Schema::create('categories', function (Blueprint $table) {
        $table->id();
        $table->string('name');
        $table->text('description')->nullable();
        $table->timestamps();
    });

    // 3. Create Employees
    Schema::create('employees', function (Blueprint $table) {
        $table->id();
        $table->string('name');
        $table->string('email')->unique();
        $table->string('dept')->nullable();
        $table->timestamps();
    });

    // 4. Create Roles
    Schema::create('roles', function (Blueprint $table) {
        $table->id();
        $table->string('name');
        $table->string('description')->nullable();
        $table->timestamps();
    });

    // 5. Create Inventories
    Schema::create('inventories', function (Blueprint $table) {
        $table->id();
        $table->string('idcode')->unique();
        $table->foreignId('category_id')->nullable()->constrained()->onDelete('set null');
        $table->string('name');
        $table->string('brand')->nullable();
        $table->string('serialnumber')->nullable();
        $table->string('supplier')->nullable();
        $table->decimal('purchasecost', 15, 2)->default(0);
        $table->date('purchasedate')->nullable();
        $table->text('license')->nullable();
        $table->string('status')->default('Available');
        $table->text('notes')->nullable();
        $table->json('history')->nullable();
        $table->date('checkdate')->nullable();
        $table->string('checkedby')->nullable();
        $table->timestamps();
        $table->softDeletes();
    });

    // 6. Create Pivot Table (Now safe because users and roles exist!)
    Schema::create('role_user', function (Blueprint $table) {
        $table->id();
        $table->foreignId('role_id')->constrained()->onDelete('cascade');
        $table->foreignId('user_id')->constrained()->onDelete('cascade');
        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ams_core_tables');
    }
}
