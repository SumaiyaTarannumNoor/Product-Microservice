<?php

namespace App\Http\Controllers;

use App\Models\ProductMetaData;
use Illuminate\Http\Request;

class ProductMetaDataController extends Controller
{
    public function index()
    {
        $productsMetaData = ProductMetaData::with("product")->get();

        return response()->json($productsMarketingLinks, 200);
    }

    public function show($id)
    {
        $productsMetaData = ProductMetaData::findOrFail($id);

        return response()->json($productsMetaData, 200);
    }

    public function store(Request $request)
    {
        $productsMetaData = ProductMetaData::create($request->all());

        return response()->json($productsMetaData, 201);
    }

    public function update(Request $request, $id)
    {
        $productsMetaData = ProductMetaData::findOrFail($id);
        $productsMetaData->update($request->all());

        return response()->json($productsMetaData, 200);
    }

    public function destroy($id)
    {
        $productsMetaData = ProductMetaData::findOrFail($id);
        $productsMetaData->delete();

        return response()->json($productsMetaData, 204);
    }
}
