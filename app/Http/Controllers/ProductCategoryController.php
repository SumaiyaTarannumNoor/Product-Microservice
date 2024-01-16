<?php

namespace App\Http\Controllers;

use App\Models\ProductCategory;
use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
    public function index()
    {
        $productCategory = ProductCategory::all();

        return response()->json($productCategory, 200);
    }

    public function show($id)
    {
        $productCategory = ProductCategory::findOrFail($id);

        return response()->json($productCategory, 200);
    }

    public function store(Request $request)
    {
        $productCategory = ProductCategory::create($request->all());

        return response()->json($productCategory, 201);
    }

    public function update(Request $request, $id)
    {
        $productCategory = ProductCategory::findOrFail($id);
        $productCategory->update($request->all());

        return response()->json($productCategory, 200);
    }

    public function destroy($id)
    {
        $productCategory = ProductCategory::findOrFail($id);
        $productCategory->delete();

        return response()->json($productCategory, 204);
    }
}
