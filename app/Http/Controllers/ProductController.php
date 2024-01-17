<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with(["brand", "discount", "productitem", "productmetadata", "productmarketinglink", "productcategory"])->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Products showing successfully.","data" => $products]);
    }

    public function show($id)
    {
        $products = Product::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product showing successfully.","data" => $products]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'product_key' => 'required|string|max:255|unique:products,product_key',
                'product_english_name' => 'required|string|max:255',
                'product_bengali_name' => 'required|string|max:255',
                'summary' => 'required|string',
                'product_book' => 'required|string',
                'marketing_communication_link_id' => 'required|string',
                'brand_id' => 'nullable|exists:brands,id',
                'category_id' => 'nullable|exists:product_categories,id',
                'benchmark_line' => 'required|in:ATL,BTL,TTL',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'updated_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $products = Product::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Product created successfully.","data" => $products]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating product", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'product_key' => 'required|string|max:255|unique:products,product_key,' . $id,
                'product_english_name' => 'required|string|max:255',
                'product_bengali_name' => 'required|string|max:255',
                'summary' => 'required|string',
                'product_book' => 'required|string',
                'marketing_communication_link_id' => 'required|string',
                'brand_id' => 'nullable|exists:brands,id',
                'category_id' => 'nullable|exists:product_categories,id',
                'benchmark_line' => 'required|in:ATL,BTL,TTL',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'updated_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $products = Product::findOrFail($id);
        $products->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product updated successfully.","data" => $products]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating product", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $products = Product::findOrFail($id);
        $products->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Product deleted successfully.","data" => $products]);
    }
}
