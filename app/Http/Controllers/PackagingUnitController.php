<?php

namespace App\Http\Controllers;

use App\Models\PackagingUnit;
use Illuminate\Http\Request;

class PackagingUnitController extends Controller
{
    public function index()
    {
        $packagingUnits = PackagingUnit::with("product")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Packaging Units showing successfully.","data" => $packagingUnits]);
    }

    public function show($id)
    {
        $packagingUnits = PackagingUnit::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Packaging Unit showing successfully.","data" => $packagingUnits]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'name' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'modified_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $packagingUnits = PackagingUnit::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Packaging Unit created successfully.","data" => $packagingUnits]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating packaging unit", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }

    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'name' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'required|string|max:255',
                'modified_by' => 'required|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $packagingUnits = PackagingUnit::findOrFail($id);
        $packagingUnits->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Packaging Unit updated successfully.","data" => $packagingUnits]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating packaging unit", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }

    }

    public function destroy($id)
    {
        $packagingUnits = PackagingUnit::findOrFail($id);
        $packagingUnits->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Packaging Unit deleted successfully.","data" => $packagingUnits]);

    }
}
