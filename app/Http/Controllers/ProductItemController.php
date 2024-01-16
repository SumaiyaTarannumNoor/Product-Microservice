<?php

namespace App\Http\Controllers;

use App\Models\ProductItem;
use Illuminate\Http\Request;

class ProductItemController extends Controller
{
    public function index()
    {
        $productItems = ProductItem::with("product")->get();

        return response()->json($productItems, 200);
    }

    public function show($id)
    {
        $productItems = ProductItem::findOrFail($id);

        return response()->json($productItems, 200);
    }

    public function store(Request $request)
    {
        $productItems = ProductItem::create($request->all());

        return response()->json($productItems, 201);
    }

    public function update(Request $request, $id)
    {
        $productItems = ProductItem::findOrFail($id);
        $productItems->update($request->all());

        return response()->json($productItems, 200);
    }

    public function destroy($id)
    {
        $productItems = ProductItem::findOrFail($id);
        $productItems->delete();

        return response()->json($productItems, 204);
    }
}
