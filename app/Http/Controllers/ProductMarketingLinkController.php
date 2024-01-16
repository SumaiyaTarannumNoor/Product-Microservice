<?php

namespace App\Http\Controllers;

use App\Models\ProductMarketingLink;
use Illuminate\Http\Request;

class ProductMarketingLinkController extends Controller
{
    public function index()
    {
        $productMarketingLinks = ProductMarketingLink::with("product")->get();

        return response()->json($productMarketingLinks, 200);
    }

    public function show($id)
    {
        $productMarketingLinks = ProductMarketingLink::findOrFail($id);

        return response()->json($productMarketingLinks, 200);
    }

    public function store(Request $request)
    {
        $productMarketingLinks = ProductMarketingLink::create($request->all());

        return response()->json($productMarketingLinks, 201);
    }

    public function update(Request $request, $id)
    {
        $productMarketingLinks = ProductMarketingLink::findOrFail($id);
        $productMarketingLinks->update($request->all());

        return response()->json($productMarketingLinks, 200);
    }

    public function destroy($id)
    {
        $productMarketingLinks = ProductMarketingLink::findOrFail($id);
        $productMarketingLinks->delete();

        return response()->json($productMarketingLinks, 204);
    }
}
