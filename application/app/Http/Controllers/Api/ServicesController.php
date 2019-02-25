<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class ServicesController extends Controller
{
    public function getBarrios(){
        $barrios = DB::table('neighborhood')->get();
        return response()->json($barrios);
    }

    public function getCategorias(Request $request)
    {
        $categorias = DB::table('categorie')->get();
        return response()->json($categorias);
    }
    public function getClientes($idBarrio, $idCategoria)
    {
        $barrios = DB::table('shop_categorie')
        ->join("shop", "shop_categorie.id_shop", '=', 'shop.id')
        ->where([
            ['id_barrio', '=', $idBarrio],
            ['id_categorie', '>', $idCategoria]
        ])
        ->get();
        return response()->json($barrios);
    }
    public function getClientesAll()
    {
        $barrios = DB::table('shop')
        ->join('shop_img', 'shop.id', '=', "shop_img.id_shop")
        ->join('shop_categorie', 'shop.id', '=', "shop_categorie.id_shop")
        ->join('categorie', 'shop_categorie.id_categorie', '=', "categorie.id")
        ->select(
            'shop.descripcion', 
            'shop.id as id', 
            'categorie.categoria as categoria', 
            'shop.empresa as empresa',
            'shop.nit as nit',
            'shop.telefono as telefono',
            'shop.direccion as direccion',
            'shop.nombre as nombre',
            'shop.celular as celular',
            'shop.correo as correo',
            'shop.redes_sociales as redes',
            'shop_img.url_imagen as url_imagen',
            'shop_img.url_logo as url_logo'
        )
        ->get();
        return response()->json($barrios);
    }
    public function getByClient($id)
    {
        $byCliente =DB::table('shop')
        ->join('shop_img', 'shop.id', '=', "shop_img.id_shop")
        ->join('shop_categorie', 'shop.id', '=', "shop_categorie.id_shop")
        ->join('categorie', 'shop_categorie.id_categorie', '=', "categorie.id")
        ->select(
            'shop.descripcion', 
            'shop.id as id', 
            'categorie.categoria as categoria', 
            'shop.empresa as empresa',
            'shop.nit as nit',
            'shop.telefono as telefono',
            'shop.direccion as direccion',
            'shop.nombre as nombre',
            'shop.celular as celular',
            'shop.correo as correo',
            'shop.redes_sociales as redes',
            'shop_img.url_imagen as url_imagen',
            'shop_img.url_logo as url_logo'
        )
        ->where('shop.id', "=", $id)
        ->first();

        return response()->json($byCliente);
    }
}
