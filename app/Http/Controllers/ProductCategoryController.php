<?php

namespace App\Http\Controllers;

use App\Models\ProductCategory;
use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
    public function index()
    {
        $productCategory = ProductCategory::all();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"All Product Categories showing successfully.","data" => $productCategory],200);

        $productCategory = $productCategory->map(function ($productCategory) {$productCategory['status'] = (bool) $productCategory['status'];
            return $productCategory;
        });
    }

    public function show($id)
    {
        $productCategory = ProductCategory::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product Category showing successfully.","data" => $productCategory], 200);
    }

    public function store(Request $request)
    {
            $request->validate([
                'name' => 'required|string|max:255',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productCategory = ProductCategory::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Product Category created successfully.","data" => $productCategory],201);

    }

    public function update(Request $request, $id)
    {
    
            $request->validate([
                'name' => 'required|string|max:255',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productCategory = ProductCategory::findOrFail($id);
        $productCategory->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product Category updated successfully.","data" => $productCategory],200);
    }

    public function destroy(Request $request, $id)
    {
        $productCategory = ProductCategory::findOrFail($id);
        $productCategory->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Product Category deleted successfully.","data" => $productCategory],204);
    }

    public function StatusChange($id)
    {
        $productCategory = ProductCategory::find($id);
        $productCategory->update(['status' => !$productCategory->status]);

        $true = true;

        $false = false;

        return $productCategory->refresh();
    }
}
