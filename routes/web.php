<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});

$router->get('id/{id?}', function($id = '1'){
	return 'Welcome user with id = ' . $id;
})->where('id', '[1-9]+');

$router->get('user/{name?}', function ($name = null) {
    return 'Welcome ' .$name;
})->where('name', '[A-Za-z]+');

$router->get('posts/{postId}/comments/{commentId}', function ($postId, $commentId) {
    return "PostId = " . $postId . ", CommentId = " . $commentId;
});*/

Route::get('/', function() {
	return view('index');
})->name('index');

Route::get('welcome', function(){
	return view('welcome');
});

//Blog And Posts
Route::get('blog', 'PostController@showAll')->name('blog');
Route::get('details/{slug}', 'PostController@showOne')->name('particularBlog');
Route::get('show', function (){
	return view('show');
})->name('show');

//Search
Route::match(['get', 'post'], '/resultados', 'SearchController@index')->name('search');

//Contact Form And Mail
Route::post('contact', 'ContactController@sendContactForm')->name('sendForm');
Route::get('contact', 'ContactController@showContactForm')->name('contact');

//Login And Register
Route::get('login', function(){
	return view('login');
})->name('login');
Route::get('register', function(){
	return view('register');
})->name('register');

/*Route::get('reset', function(){
	return view('auth/passwords/reset');
})->name('reset');*/

//Authentication
Auth::routes();

///Home
Route::get('/home', 'HomeController@index')->name('home');

//Voyager Prefix
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

//Saving Products
Route::get('product', 'ProductController@index')->name('producto');
Route::post('product', 'ProductController@save')->name('saveproduct');