<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DemoController extends Controller
{
    public function index(){
        return view('demo_controller');
    }
    public function about(){
        return view('about');
    }
}
