<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Discount extends Model
{
    protected $table = 'discounts';

    protected $fillable = [
        'product_id',
        'is_fixed_discount',
        'discount_amount',
        'start_date',
        'end_date',
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
