<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    protected $fillable = [
        // 'product_key',
        // 'summary',
        // 'product_book',
        // 'benchmark_line',
        'brand_id',
        'category_id',
        'product_english_name',
        'product_bengali_name',
        'factory1',
        'factory2',
        'sku_name',
        'distribution_price',
        'trade_price',
        'erp_id',
        'unit',
        'weight_pcs',
        'pcs_ctn',
        'product_open_date',
        'closing_date',
        'marketing_communication_link',
        'image_url',
        'status_new',
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

    public function getProductStatusAttribute($value)
    {
        return $value == 1 ? true : false;
    }

    protected $casts = [
        'status' => 'boolean',
        'status_new' => 'boolean',
    ];

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function discount()
    {
        return $this->hasMany(Discount::class);
    }

    public function productitem()
    {
        return $this->hasMany(ProductItem::class);
    }

    public function productmetadata()
    {
        return $this->hasMany(ProductMetaData::class);
    }

    public function productmarketinglink()
    {
        return $this->hasMany(ProductMarketingLink::class);
    }

    public function productcategory()
    {
        return $this->belongsTo(ProductCategory::class, 'category_id');
    }
}
