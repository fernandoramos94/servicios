<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::middleware(['cors'])->group(function () {
    Route::post('register', 'Api\AuthController@register');
    Route::post('login', 'Api\AuthController@login');
    Route::get('barrios', 'Api\ServicesController@getBarrios');
    Route::get('categorias', 'Api\ServicesController@getCategorias');
    Route::get('clientes/{idBarrio}/{idCategoria}', 'Api\ServicesController@getClientes');
    Route::get('clientes', 'Api\ServicesController@getClientesAll');
});