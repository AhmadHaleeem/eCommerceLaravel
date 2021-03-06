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

Route::get('/', function () {
    return view('index');
});

Route::resource('products', 'ProductsController');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

// Frontend Routes
Route::get('/', 'FronEndController@index')->name('index');
Route::get('/product/{id}', 'FronEndController@singleProduct')->name('product.single');

Route::post('/cart/add', 'ShoppingController@add_to_cart')->name('cart.add');
Route::get('/cart', 'ShoppingController@cart')->name('cart');
Route::get('/cart/delete/{id}', 'ShoppingController@delete_cart')->name('cart.delete');

Route::get('/cart/increase/{id}/{qty}', 'ShoppingController@increase')->name('cart.increase');
Route::get('/cart/decrease/{id}/{qty}', 'ShoppingController@decrease')->name('cart.decrease');

Route::get('/cart/rapid/add/{id}', 'ShoppingController@rapid_add')->name('rapid.add');

Route::get('cart/checkout', 'CheckoutController@index')->name('cart.checkout');
Route::post('cart/checkout', 'CheckoutController@pay')->name('cart.checkout');
