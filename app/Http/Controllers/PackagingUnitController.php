<?php

namespace App\Http\Controllers;

use App\Models\PackagingUnit;
use Illuminate\Http\Request;

class PackagingUnitController extends Controller
{
    public function index()
    {
        $packagingUnits = PackagingUnit::with("product")->get();

        return response()->json($packagingUnits, 200);
    }

    public function show($id)
    {
        $packagingUnits = PackagingUnit::findOrFail($id);

        return response()->json($packagingUnits, 200);
    }

    public function store(Request $request)
    {
        $packagingUnits = PackagingUnit::create($request->all());

        return response()->json($packagingUnits, 201);
    }

    public function update(Request $request, $id)
    {
        $packagingUnits = PackagingUnit::findOrFail($id);
        $packagingUnits->update($request->all());

        return response()->json($packagingUnits, 200);
    }

    public function destroy($id)
    {
        $packagingUnits = PackagingUnit::findOrFail($id);
        $packagingUnits->delete();

        return response()->json($packagingUnits, 204);
    }
}
