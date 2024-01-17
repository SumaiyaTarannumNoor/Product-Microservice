<?php

namespace App\Http\Controllers;

use App\Models\ProductMetaData;
use Illuminate\Http\Request;

class ProductMetaDataController extends Controller
{
    public function index()
    {
        $productsMetaData = ProductMetaData::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Products Meta Data showing successfully.","data" => $productsMetaData]);
    }

    public function show($id)
    {
        $productsMetaData = ProductMetaData::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product Meta Data showing successfully.","data" => $productsMetaData]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'product_id' => 'nullable|exists:products,id',
                'image_url' => 'required|url|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'modified_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productsMetaData = ProductMetaData::create($request->all());

        return response()->json($productsMetaData, 201);
        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Product Meta Data created successfully.","data" => $productsMetaData]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating product meta data", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        $productsMetaData = ProductMetaData::findOrFail($id);
        $productsMetaData->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product Meta Data updated successfully.","data" => $productsMetaData]);
    }

    public function destroy($id)
    {
        $productsMetaData = ProductMetaData::findOrFail($id);
        $productsMetaData->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Product Meta Data deleted successfully.","data" => $productsMetaData]);
    }
}
