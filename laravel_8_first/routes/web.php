<?php

use App\Http\Controllers\DemoController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\ResourceController;
use App\Http\Controllers\SingleActionController;
use Illuminate\Support\Facades\Route;
use App\Models\Customer;
use Illuminate\Http\Request;

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

// Route::get('/{lang?}', function ($lang = 'en') {
//     App::setLocale($lang);
//     return view('welcome');
// });
Route::get('/demo', function () {
    echo "demo";
});
Route::get('/demo2/{name}/{id?}', function ($name, $id = null) {
    echo $name;
    echo $id;
});
Route::get('/cDemo', [DemoController::class, 'index']);
Route::get('/demo3/{name}/{id?}', function ($name, $id = null) {
    $html_h2 = '<h2>Demo Off {!! $html_h2 }</h2>';
    $data = compact('name', 'id', 'html_h2');
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
Route::get('/about-us', 'App\Http\Controllers\DemoController@about');
Route::get('/invoke', SingleActionController::class);
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
Route::resource('resource', ResourceController::class);

Route::get('/register', [RegisterController::class, 'index']);
Route::group(['prefix' => '/customer'], function () {
    Route::get('view', [RegisterController::class, 'view']);
    Route::get('trash', [RegisterController::class, 'trash']);
    Route::get('delete/{id}', [RegisterController::class, 'delete'])->name('customer.delete');
    Route::get('force_delete/{id}', [RegisterController::class, 'forceDelete'])->name('customer.force_delete');
    Route::get('restore/{id}', [RegisterController::class, 'restore'])->name('customer.restore');
    Route::get('edit/{id}', [RegisterController::class, 'edit'])->name('customer.edit'); // for form/view
    Route::get('update/{id}', [RegisterController::class, 'update'])->name('customer.update'); // for action
});
Route::get('/component', [RegisterController::class, 'component']);
Route::get('/collective', [RegisterController::class, 'collective']);
Route::post('/register', [RegisterController::class, 'register']);
Route::post('/saveContact', [RegisterController::class, 'saveContact']);
Route::get('/search/{search}', [RegisterController::class, 'search']);
Route::get('/onetoone', [RegisterController::class, 'oneToOne']);
Route::get('/onetomany', [RegisterController::class, 'oneToMany']);
Route::get('/groupMemebers', [RegisterController::class, 'groupMemebers']);
Route::get('/customer/{customer}', [RegisterController::class, 'customerDetails']);

Route::get('/customers', function () {
    $customers = Customer::all();
    echo "<pre>";
    // print_r($customers);
    print_r($customers->toArray());
    echo "<br>";
    echo "</pre>";
});
Route::get('/get-sessions', function () {
    $session = session()->all();
    ep($session);
});
Route::get('/set-sessions', function (Request $req) {
    $req->session()->put('user_id', 12);
    $req->session()->put('user_name', "John");
    $req->session()->flash('status', true);
    return Redirect('get-sessions');
});
Route::get('/destroy-sessions', function (Request $req) {
    // $req->session()->forget('user_id');
    $req->session()->forget(['user_id', 'user_name']);

    return Redirect('get-sessions');
});