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
    }

    public function show($id)
    {
        $discounts = Discount::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Discount showing successfully.","data" => $discounts]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'product_id' => 'nullable|exists:products,id',
                'is_fixed_discount' => 'required|boolean',
                'discount_amount' => 'required|string',
                'start_date' => 'required|date',
                'end_date' => 'required|date',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'updated_by' => 'required|string|max:255',
            ]);

        $discounts = Discount::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Discount created successfully.","data" => $discounts]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating discount", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'product_id' => 'nullable|exists:products,id',
                'is_fixed_discount' => 'required|boolean',
                'discount_amount' => 'required|string',
                'start_date' => 'required|date',
                'end_date' => 'required|date',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'updated_by' => 'required|string|max:255',
            ]);

        $discounts = Discount::findOrFail($id);
        $discounts->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Discount updated successfully.","data" => $discounts]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating discount", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $discounts = Discount::findOrFail($id);
        $discounts->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Discount deleted successfully.","data" => $discounts]);
    }
}
