<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductItem extends Model
{
    protected $table = 'product_items';

    protected $fillable = [
        'erp_id',
        'product_id',
        'sku_number',
        'distribution_price',
        'trade_price',
        'weight_per_unit',
        'packing_unit_id',
        'selling_pack_size',
        'selling_cartoon_size',
        'is_new_product',
        'is_offer_running',
        'is_distribution_git_available',
        'is_sms_active',
        'is_product_in_stock',
        'opening_date',
        'closing_date',
        'is_active',
        'status',
        'created_by',
        'updated_by',
        'ip',
        'browser',
    ];

    public function getStatusAttribute($value)
    {
        return $value == 1 ? true : false;
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
