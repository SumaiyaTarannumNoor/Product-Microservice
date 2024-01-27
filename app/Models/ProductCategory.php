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
    public function getStatusAttribute($value)
    {
        return $value == 1 ? true : false;
    }

    public function product()
    {
        return $this->hasMany(Product::class);
    }
}
