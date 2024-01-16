<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductMetaData extends Model
{
    protected $table = 'products_meta_data';

    protected $fillable = [
        'product_id',
        'image_url',
        'status',
        'created_by',
        'updated_by',
        'ip',
        'browser',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}

