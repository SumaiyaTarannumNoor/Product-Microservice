<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with(["brand", "discount", "productitem", "productmetadata", "productmarketinglink", "productcategory"])->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Products showing successfully.","data" => $products],200);

        $products = $products->map(function ($products) {$products['status'] = (bool) $products['status'];
            return $products;
        });
    }

    public function show($id)
    {
        $products = Product::findOrFail($id);
        $products = Product::with(["brand", "discount", "productitem", "productmetadata", "productmarketinglink", "productcategory"])->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product showing successfully.","data" => $products],200);
    }

    public function store(Request $request)
    {
            $request->validate([
                'product_key' => 'required|string|max:255|unique:products,product_key,',
                'product_english_name' => 'required|string|max:255',
                'product_bengali_name' => 'required|string|max:255',
                'summary' => 'required|string',
                'product_book' => 'required|string',
                'marketing_communication_link_id' => 'required|string',
                'brand_id' => 'required|exists:brands,id',
                'category_id' => 'required|exists:product_categories,id',
                'benchmark_line' => 'required|in:ATL,BTL,TTL',
                'factory1' => 'nullable|string',
                'factory2'=> 'nullable|string',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $products = Product::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Product created successfully.","data" => $products],201);
    }

    public function update(Request $request, $id)
    {
            $request->validate([
                'product_key' => 'required|string|max:255|unique:products,product_key,' . $id,
                'product_english_name' => 'required|string|max:255',
                'product_bengali_name' => 'required|string|max:255',
                'summary' => 'required|string',
                'product_book' => 'required|string',
                'marketing_communication_link_id' => 'required|string',
                'brand_id' => 'required|exists:brands,id',
                'category_id' => 'required|exists:product_categories,id',
                'benchmark_line' => 'required|in:ATL,BTL,TTL',
                'factory1' => 'nullable|string',
                'factory2'=> 'nullable|string',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $products = Product::findOrFail($id);
        $products->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product updated successfully.","data" => $products],200);
    }

    public function destroy($id)
    {
        $products = Product::findOrFail($id);
        $products->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Product deleted successfully.","data" => $products],204);
    }

    public function StatusChange($id)
    {
        $products = Product::find($id);
        $products->update(['status' => !$products->status]);

        $true = true;

        $false = false;

        return $products->refresh();
    }
}
