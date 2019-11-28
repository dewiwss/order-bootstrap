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
    return view('welcome');
});

//belajar buat app CRUD dengan templating blade dan bootstrap
Route::get('/dashboard','OrderController@index');
// route menampilkan data order
Route::get('/order','OrderController@data_order');
//route menampilkan halaman form tambah dadta
Route::get('/order/create',function(){
    return view('order.create');
});
//route mengirim data di form atau proses penambahan data melalui form
Route::post('/order/creating','OrderController@creating');
//route delete data order
Route::get('/order/{id}/delete','OrderController@deleting');
//route untuk mrngarahkan ke form update
Route::get('/order/{id}/update','OrderController@update');
//route proses update data order
Route::post('/order/{id}/updating','OrderController@updating');


// Route auth
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
