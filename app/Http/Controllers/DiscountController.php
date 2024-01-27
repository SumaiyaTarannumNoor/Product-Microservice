<?php

namespace App\Http\Controllers;

use App\Models\Discount;
use Illuminate\Http\Request;

class DiscountController extends Controller
{
    public function index()
    {
        $discounts = Discount::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"All discounts showing successfully.","data" => $discounts]);

        $discounts = $discounts->map(function ($discounts) {$discounts['status'] = (bool) $discounts['status'];
            return $discounts;
        });
    }

    public function show($id)
    {
        $discounts = Discount::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Discount showing successfully.","data" => $discounts],200);
    }

    public function store(Request $request)
    {
   
        $request->validate([
            'product_id' => 'nullable|exists:products,id',
            'is_fixed_discount' => 'required|boolean',
            'discount_amount' => 'required|string',
            'start_date' => 'required|date',
            'end_date' => 'required|date',
            'status' => 'nullable|string',
            'created_by' => 'nullable|string|max:255',
            'updated_by' => 'nullable|string|max:255',
            'ip' => 'nullable|ip',
            'browser' => 'nullable|string|max:255',
        ]);

        $discounts = Discount::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Discount created successfully.","data" => $discounts], 201);
    
    }

    public function update(Request $request, $id)
    {
    
            $request->validate([
                'product_id' => 'nullable|exists:products,id',
                'is_fixed_discount' => 'required|boolean',
                'discount_amount' => 'required|string',
                'start_date' => 'required|date',
                'end_date' => 'required|date',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $discounts = Discount::findOrFail($id);
        $discounts->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Discount updated successfully.","data" => $discounts],200);
    }

    public function destroy($id)
    {
        $discounts = Discount::findOrFail($id);
        $discounts->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Discount deleted successfully.","data" => $discounts],204);
    }

    public function StatusChange($id)
    {
        $discounts = Discount::find($id);
        $discounts->update(['status' => !$discounts->status]);

        $true = true;

        $false = false;

        return $discounts->refresh();
    }
}
