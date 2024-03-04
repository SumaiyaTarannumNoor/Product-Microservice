<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\DiscountController;
use App\Http\Controllers\PackagingUnitController;
use App\Http\Controllers\ProductCategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductItemController;
use App\Http\Controllers\ProductMarketingLinkController;
use App\Http\Controllers\ProductMetaDataController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::resource('brands', BrandController::class);
Route::resource('discounts', DiscountController::class);
Route::resource('packaging_units', PackagingUnitController::class);
Route::resource('product_categories', ProductCategoryController::class);
Route::resource('products', ProductController::class);
Route::resource('product_items', ProductItemController::class);
Route::resource('product_marketing_links', ProductMarketingLinkController::class);
Route::resource('products_meta_data', ProductMetaDataController::class);

//Status Change
Route::get('/brandStatusChange/{id}', [BrandController::class, 'StatusChange']);
Route::get('/discountStatusChange/{id}', [DiscountController::class, 'StatusChange']);
Route::get('/packagingUnitStatusChange/{id}', [PackagingUnitController::class, 'StatusChange']);
Route::get('/productStatusChange/{id}', [ProductController::class, 'StatusChange']);
Route::get('/productCategoryStatusChange/{id}', [ProductCategoryController::class, 'StatusChange']);
Route::get('/productItemStatusChange/{id}', [ProductItemController::class, 'StatusChange']);
Route::get('/productMetaDataStatusChange/{id}', [ProductMetaDataController::class, 'StatusChange']);

//New Product Status
Route::get('/new_productStatusChange/{id}', [ProductController::class, 'ProductStatusChange']);

