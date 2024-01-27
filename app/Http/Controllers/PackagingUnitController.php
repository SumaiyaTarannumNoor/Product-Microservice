<?php

namespace App\Http\Controllers;

use App\Models\PackagingUnit;
use Illuminate\Http\Request;

class PackagingUnitController extends Controller
{
    public function index()
    {
        $packagingUnits = PackagingUnit::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Packaging Units showing successfully.","data" => $packagingUnits],200);

        $packagingUnits = $packagingUnits->map(function ($packagingUnits) {$packagingUnits['status'] = (bool) $packagingUnits['status'];
            return $packagingUnits;
        });
    }

    public function show($id)
    {
        $packagingUnits = PackagingUnit::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Packaging Unit showing successfully.","data" => $packagingUnits],200);
    }

    public function store(Request $request)
    {

            $request->validate([
                'name' => 'required|string|max:255',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $packagingUnits = PackagingUnit::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Packaging Unit created successfully.","data" => $packagingUnits], 201);

    }

    public function update(Request $request, $id)
    {
   
            $request->validate([
                'name' => 'required|string|max:255',
                'status' => 'nullable|string',
                'created_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $packagingUnits = PackagingUnit::findOrFail($id);
        $packagingUnits->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Packaging Unit updated successfully.","data" => $packagingUnits],200);
        

    }

    public function destroy(Request $request, $id)
    {
        $packagingUnits = PackagingUnit::findOrFail($id);
        $packagingUnits->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Packaging Unit deleted successfully.","data" => $packagingUnits], 204);

    }

    public function StatusChange($id)
    {
        $packagingUnits = PackagingUnit::find($id);
        $packagingUnits->update(['status' => !$packagingUnits->status]);

        $true = true;

        $false = false;

        return $packagingUnits->refresh();
    }
}
