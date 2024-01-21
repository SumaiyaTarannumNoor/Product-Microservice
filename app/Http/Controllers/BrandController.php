<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index()
    {
        $brands = Brand::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"All brands showing successfully.","data" => $brands],200);
    }

    public function show($id)
    {
        $brands = Brand::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Brand showing successfully.","data" => $brands], 200);
    }

    public function store(Request $request)
    {

            $request->validate([
                'name' => 'required|string|max:255',
                'description' => 'required|string',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $brands = Brand::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Brand created successfully.","data" => $brands],201);
       
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string',
            'created_by' => 'nullable|string|max:255',
            'updated_by' => 'nullable|string|max:255',
            'ip' => 'nullable|ip',
            'browser' => 'nullable|string|max:255',
            ]);
        $brands = Brand::findOrFail($id);
        $brands->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Brand updated successfully.","data" => $brands],200);
        
    }

    public function destroy($id)
    {
        $brands = Brand::findOrFail($id);
        $brands->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Brand deleted successfully.","data" => $brands],204);
    }
}
