<?php

namespace App\Http\Controllers;

use App\Models\ProductMarketingLink;
use Illuminate\Http\Request;

class ProductMarketingLinkController extends Controller
{
    public function index()
    {
        $productMarketingLinks = ProductMarketingLink::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product marketing links showing successfully.","data" => $productMarketingLinks]);
    }

    public function show($id)
    {
        $productMarketingLinks = ProductMarketingLink::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product marketing link showing successfully.","data" => $productMarketingLinks]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'link' => 'required|url|max:255',
                'product_id' => 'nullable|exists:products,id',
                'created_by' => 'required|string|max:255',
                'modified_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productMarketingLinks = ProductMarketingLink::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Product marketing link created successfully.","data" => $productMarketingLinks]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating product marketing link", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'link' => 'required|url|max:255',
                'product_id' => 'nullable|exists:products,id',
                'created_by' => 'required|string|max:255',
                'modified_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productMarketingLinks = ProductMarketingLink::findOrFail($id);
        $productMarketingLinks->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product marketing link updated successfully.","data" => $productMarketingLinks]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating product marketing link", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $productMarketingLinks = ProductMarketingLink::findOrFail($id);
        $productMarketingLinks->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Product marketing link deleted successfully.","data" => $productMarketingLinks]);
    }
}
