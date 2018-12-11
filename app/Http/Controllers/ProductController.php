<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Producto;

class ProductController extends Controller
{

	public function index(){
		return view('producto');
	}

    public function save(Request $request){

    	$producto = new Producto;
    	$producto->nombre_producto = $request->nomProducto;
    	$producto->save();

    	return redirect()->back()->withDetail($producto);

    }
}
