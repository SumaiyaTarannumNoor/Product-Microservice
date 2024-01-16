<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with(["brand", "discount", "productitem", "productmetadata", "productmarketinglink", "productcategory"])->get();

        return response()->json($products, 200);
    }

    public function show($id)
    {
        $products = Product::findOrFail($id);

        return response()->json($products, 200);
    }

    public function store(Request $request)
    {
        $products = Product::create($request->all());

        return response()->json($products, 201);
    }

    public function update(Request $request, $id)
    {
        $products = Product::findOrFail($id);
        $products->update($request->all());

        return response()->json($products, 200);
    }

    public function destroy($id)
    {
        $products = Product::findOrFail($id);
        $products->delete();

        return response()->json($products, 204);
    }
}
