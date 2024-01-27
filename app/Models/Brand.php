<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $table = 'brands';

    protected $fillable = [
        'name',
        'description',
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
