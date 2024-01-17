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
        Schema::table('products_meta_data', function (Blueprint $table) {
            $table->string('updated_by')->after('modified_by')->nullable();
            $table->dropColumn('modified_by');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('products_meta_data', function (Blueprint $table) {
            $table->string('modified_by')->after('old_column')->nullable();
            $table->dropColumn('updated_by');
        });
    }
};
