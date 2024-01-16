<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index()
    {
        $brands = Brand::with("product")->get();

        return response()->json($brands, 200);
    }

    public function show($id)
    {
        $brands = Brand::findOrFail($id);

        return response()->json($brands, 200);
    }

    public function store(Request $request)
    {
        $brands = Brand::create($request->all());

        return response()->json($brands, 201);
    }

    public function update(Request $request, $id)
    {
        $brands = Brand::findOrFail($id);
        $brands->update($request->all());

        return response()->json($brands, 200);
    }

    public function destroy($id)
    {
        $brands = Brand::findOrFail($id);
        $brands->delete();

        return response()->json($brands, 204);
    }
}
