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
        Schema::table('products', function (Blueprint $table) {
            $table->string('sku_name');
            $table->float('distribution_price');
            $table->float('trade_price');
            $table->unsignedBigInteger('erp_id');
            $table->string('unit');
            $table->integer('weight_pcs');
            $table->integer('pcs_ctn');
            $table->date('product_open_date')->nullable();
            $table->date('closing_date')->nullable();
            $table->string('image_url')->nullable();
            $table->boolean('status_new')->default(true)->nullable();
            $table->boolean('status')->default(true)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('products', function (Blueprint $table) {
            //
        });
    }
};
