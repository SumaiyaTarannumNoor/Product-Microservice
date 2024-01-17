<?php

namespace App\Http\Controllers;

use App\Models\ProductItem;
use Illuminate\Http\Request;

class ProductItemController extends Controller
{
    public function index()
    {
        $productItems = ProductItem::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product items showing successfully.","data" => $productItems]);
    }

    public function show($id)
    {
        $productItems = ProductItem::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product item showing successfully.","data" => $productItems]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'erp_id' => 'nullable|exists:your_erp_table,id',
                'product_id' => 'nullable|exists:products,id',
                'sku_number' => 'required|string|max:255',
                'distribution_price' => 'required|string',
                'trade_price' => 'required|string',
                'weight_per_unit' => 'required|string',
                'packing_unit_id' => 'nullable|exists:packaging_units,id',
                'selling_pack_size' => 'required|string',
                'selling_cartoon_size' => 'required|string',
                'is_new_product' => 'required|boolean',
                'is_offer_running' => 'required|boolean',
                'is_distribution_git_available' => 'required|boolean',
                'is_sms_active' => 'required|boolean',
                'is_product_in_stock' => 'required|boolean',
                'opening_date' => 'required|date',
                'closing_date' => 'required|date',
                'is_active' => 'required|boolean',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'updated_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $productItems = ProductItem::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Product item created successfully.","data" => $productItems]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating product item", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'erp_id' => 'nullable|exists:your_erp_table,id',
                'product_id' => 'nullable|exists:products,id',
                'sku_number' => 'required|string|max:255',
                'distribution_price' => 'required|string',
                'trade_price' => 'required|string',
                'weight_per_unit' => 'required|string',
                'packing_unit_id' => 'nullable|exists:packaging_units,id',
                'selling_pack_size' => 'required|string',
                'selling_cartoon_size' => 'required|string',
                'is_new_product' => 'required|boolean',
                'is_offer_running' => 'required|boolean',
                'is_distribution_git_available' => 'required|boolean',
                'is_sms_active' => 'required|boolean',
                'is_product_in_stock' => 'required|boolean',
                'opening_date' => 'required|date',
                'closing_date' => 'required|date',
                'is_active' => 'required|boolean',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'updated_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productItems = ProductItem::findOrFail($id);
        $productItems->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product item updated successfully.","data" => $productItems]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating product item", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $productItems = ProductItem::findOrFail($id);
        $productItems->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Product item deleted successfully.","data" => $productItems]);
    }
}
