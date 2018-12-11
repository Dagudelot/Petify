<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function showAll(){
    	$posts = Post::where('STATUS', '=', 'PUBLISHED')->orderBy('created_at', 'desc')->paginate(4);
    	return view('blog', compact('posts'));
    }

    public function showOne($url){
    	$post = Post::where('slug', '=', $url)->firstOrFail();
    	return view('details', compact('post'));
    }


}
