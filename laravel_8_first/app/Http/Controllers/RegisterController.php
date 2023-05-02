<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
class RegisterController extends Controller
{
    public function index(){
        return view("form");
    }
    public function component(){
        return view("component");
    }
    public function register(Request $req){

        $req->validate(
            [
              'name'=>'required',  
              'email'=>'required|email',  
              'password'=>'required',
              'confirm_password'=>'required|same:password',
            ]   
            );

        $customer = new Customer;
        $customer->name = $req['name'];
        $customer->email = $req['email'];
        $customer->address = $req['address'];
        $customer->password = md5($req['email']);
        $customer->save();
        // echo'<pre>';
        // print_r($customer->id);
        // die;
        return redirect('customer/view');
        
    }
    public function view(){
        $customers = Customer::all();
        $data = compact('customers');
        return view('customer-view')->with($data);
    }
    public function delete($id){
        $customer = Customer::find($id);
        if($customer){
            $customer->delete();
        }
        return redirect('customer/view');
    }
    public function update($id){   // add Request $req if it is from form/view
        $customer = Customer::find($id);
        ep($customer);
        if($customer){
            $customer->address = "Address ".date('Ymdhisa')."-".rand(); // use $req->address if it is from form/view
            $customer->save();
        }
        return redirect('customer/view');
    }
}
