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
        Schema::create('product_items', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('erp_id')->nullable();
            $table->unsignedBigInteger('product_id')->nullable();
            $table->string('sku_number');
            $table->string('distribution_price');
            $table->string('trade_price');
            $table->string('weight_per_unit');
            $table->unsignedBigInteger('packing_unit_id')->nullable();
            $table->string('selling_pack_size');
            $table->string('selling_cartoon_size');
            $table->boolean('is_new_product');
            $table->boolean('is_offer_running');
            $table->boolean('is_distribution_git_available');
            $table->boolean('is_sms_active');
            $table->boolean('is_product_in_stock');
            $table->string('opening_date');
            $table->string('closing_date');
            $table->boolean('is_active');
            $table->string('status')->default(false);
            $table->string('created_by');
            $table->string('updated_by');
            $table->string('ip')->nullable();
            $table->string('browser')->nullable();
            $table->timestamps();
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
            $table->foreign('packing_unit_id')->references('id')->on('packaging_units')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_items');
    }
};
