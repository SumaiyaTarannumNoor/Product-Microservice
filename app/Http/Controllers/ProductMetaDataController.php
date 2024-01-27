<?php

namespace App\Http\Controllers;

use App\Models\ProductMetaData;
use Illuminate\Http\Request;

class ProductMetaDataController extends Controller
{
    public function index()
    {
        $productsMetaData = ProductMetaData::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Products Meta Data showing successfully.","data" => $productsMetaData],200);

        $productsMetaData = $productsMetaData->map(function ($productsMetaData) {$productsMetaData['status'] = (bool) $productsMetaData['status'];
            return $productsMetaData;
        });
    }

    public function show($id)
    {
        $productsMetaData = ProductMetaData::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product Meta Data showing successfully.","data" => $productsMetaData],200);
    }

    public function store(Request $request)
    {
            $request->validate([
                'product_id' => 'required|exists:products,id',
                'image_url' => 'required|url|max:255',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productsMetaData = ProductMetaData::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Product Meta Data created successfully.","data" => $productsMetaData],201);
    }

    public function update(Request $request, $id)
    {
            $request->validate([
                'product_id' => 'required|exists:products,id',
                'image_url' => 'required|url|max:255',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $productsMetaData = ProductMetaData::findOrFail($id);
        $productsMetaData->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product Meta Data updated successfully.","data" => $productsMetaData],200);
    }

    public function destroy(Request $request, $id)
    {
        $productsMetaData = ProductMetaData::findOrFail($id);
        $productsMetaData->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Product Meta Data deleted successfully.","data" => $productsMetaData],204);
    }

    public function StatusChange($id)
    {
        $productsMetaData = ProductMetaData::find($id);
        $productsMetaData->update(['status' => !$productsMetaData->status]);

        $true = true;

        $false = false;

        return $productsMetaData->refresh();
    }
}
