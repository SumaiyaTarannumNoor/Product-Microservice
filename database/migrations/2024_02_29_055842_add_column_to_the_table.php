<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('discounts', function (Blueprint $table) {
            $table->string('sku_name')->nullable();
            $table->string('division')->nullable();
            $table->string('region')->nullable();
            $table->string('zone')->nullable();
            $table->string('distributor')->nullable();
            $table->string('discount_offer')->nullable();
            $table->integer('if_buy_quantity')->nullable();
            $table->string('free_offer')->nullable();

        });
    }

};
