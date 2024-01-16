<?php

namespace App\Http\Controllers;

use App\Models\Discount;
use Illuminate\Http\Request;

class DiscountController extends Controller
{
    public function index()
    {
        $discounts = Discount::with("product")->get();

        return response()->json($discounts, 200);
    }

    public function show($id)
    {
        $discounts = Discount::findOrFail($id);

        return response()->json($discounts, 200);
    }

    public function store(Request $request)
    {
        $discounts = Discount::create($request->all());

        return response()->json($discounts, 201);
    }

    public function update(Request $request, $id)
    {
        $discounts = Discount::findOrFail($id);
        $discounts->update($request->all());

        return response()->json($discounts, 200);
    }

    public function destroy($id)
    {
        $discounts = Discount::findOrFail($id);
        $discounts->delete();

        return response()->json($discounts, 204);
    }
}
