<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    protected $fillable = [
        'product_key',
        'product_english_name',
        'product_bengali_name',
        'summary',
        'product_book',
        'marketing_communication_link_id',
        'brand_id',
        'category_id',
        'benchmark_line',
        'status',
        'created_by',
        'updated_by',
        'ip',
        'browser',
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
        return $this->belongsTo(ProductCategory::class);
    }
}
