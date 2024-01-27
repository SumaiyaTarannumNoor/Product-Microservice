<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PackagingUnit extends Model
{
    protected $table = 'packaging_units';

    protected $fillable = [
        'name',
        'status',
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
