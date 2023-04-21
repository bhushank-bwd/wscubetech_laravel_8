<?php

use App\Http\Controllers\DemoController;
use App\Http\Controllers\ResourceController;
use App\Http\Controllers\SingleActionController;
use Illuminate\Support\Facades\Route;

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
Route::get('/demo', function () {
    echo "demo";
});
Route::get('/demo2/{name}/{id?}', function ($name,$id = null) {
    echo $name;
    echo $id;
});
Route::get('/cDemo',[DemoController::class,'index']);
Route::get('/demo3/{name}/{id?}', function ($name,$id = null) {
    $html_h2 = '<h2>Demo Off {!! $html_h2 }</h2>';
    $data = compact('name','id','html_h2');
    return view('demo3')->with($data);
});
Route::get('/demo1', function () {
    return view('demo');
});
Route::get('/home', function () {
    return view('home');
});
Route::get('/about', function () {
    return view('about');
});
Route::get('/about-us','App\Http\Controllers\DemoController@about');
Route::get('/invoke',SingleActionController::class);
Route::post('/post_demo', function () {
    echo "called when csrf token is present";
});
Route::put('/put_demo', function () {
    echo "called update";
});
Route::patch('/patch_demo', function () {
    echo "called update";
});
Route::delete('/delet_demo', function () {
    echo "called for delete";
});
Route::any('/any_demo', function () {
    echo "called when for any post/get";
});
Route::resource('resource',ResourceController::class);
