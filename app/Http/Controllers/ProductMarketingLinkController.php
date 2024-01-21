<?php

namespace App\Http\Controllers;

use App\Models\ProductMarketingLink;
use Illuminate\Http\Request;

class ProductMarketingLinkController extends Controller
{
    public function index()
    {
        $productMarketingLinks = ProductMarketingLink::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product marketing links showing successfully.","data" => $productMarketingLinks],200);
    }

    public function show($id)
    {
        $productMarketingLinks = ProductMarketingLink::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product marketing link showing successfully.","data" => $productMarketingLinks],200);
    }

    public function store(Request $request)
    {
            $request->validate([
                'link' => 'required|url|max:255',
                'product_id' => 'required|exists:products,id',
                'created_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productMarketingLinks = ProductMarketingLink::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Product marketing link created successfully.","data" => $productMarketingLinks],201);
    }

    public function update(Request $request, $id)
    {

            $request->validate([
                'link' => 'required|url|max:255',
                'product_id' => 'required|exists:products,id',
                'created_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $productMarketingLinks = ProductMarketingLink::findOrFail($id);
        $productMarketingLinks->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Product marketing link updated successfully.","data" => $productMarketingLinks],200);
    }

    public function destroy($id)
    {
        $productMarketingLinks = ProductMarketingLink::findOrFail($id);
        $productMarketingLinks->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Product marketing link deleted successfully.","data" => $productMarketingLinks],204);
    }
}
