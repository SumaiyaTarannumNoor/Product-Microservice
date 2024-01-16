<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    protected $table = 'product_categories';

    protected $fillable = [
        'name',
        'status',
        'created_by',
        'updated_by',
        'ip',
        'browser',
    ];

    public function products()
    {
        return $this->hasMany(Product::class);
    }
}
