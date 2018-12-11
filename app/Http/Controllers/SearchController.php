<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class SearchController extends Controller
{
    public function index(){
    	$search = Input::get('search');

    	if($search != ""){
    		$post = Post::where('title', 'LIKE', '%' . $search . '%')->orderBy('created_at', 'desc')->paginate(5);

	    	if(count($post) > 0){
	    		return view('search')->withDetails($post)->withQuery($search);
	    	}

    	}

    	return view('search')->withMessage("No encontramos lo que está buscando");
    }
}
