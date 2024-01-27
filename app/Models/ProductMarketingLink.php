<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductMarketingLink extends Model
{
    protected $table = 'product_marketing_links';

    protected $fillable = [
        'link',
        'product_id',
        'created_by',
        'modified_by',
        'modified_at',
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
