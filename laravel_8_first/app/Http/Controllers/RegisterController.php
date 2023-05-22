<?php

namespace App\Http\Controllers;

use App\Models\Group;
use App\Models\Member;
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
        $customers = Customer::paginate(15);
        $data = compact('customers');
        return view('customer-view')->with($data);
    }
    public function search($search){
        $customers = Customer::where("name",'LIKE',"%$search%")->orWhere("email",'LIKE',"%$search%")->paginate(4);
        $data = compact('customers');
        return view('customer-view')->with($data);
    }
    public function trash(){
        $customers = Customer::onlyTrashed()->get();
        $data = compact('customers');
        return view('customer-trash')->with($data);
    }
    public function delete($id){
        $customer = Customer::find($id);
        if($customer){
            $customer->delete();
        }
        return redirect('customer/view');
    }
    
    public function restore($id){
        $customer = Customer::withTrashed()->find($id);
        if($customer){
            $customer->restore();
        }
        return redirect('customer/view');
    }
    public function forceDelete($id){
        $customer = Customer::withTrashed()->find($id);
        if($customer){
            $customer->forceDelete();
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
    public function collective(){
        return view('collective');
    }
    public function saveContact(Request $request){
        // ep($request->all(),false);
        $name = time()."-ws-.".$request->file('avtar')->getClientOriginalExtension();
        echo $request->file('avtar')->store('uploads');
        echo "<br>";
        echo $request->file('avtar')->storeAs('uploads',$name);
    }
    public function oneToOne(){
        return Member::with('getGroup')->get();
    }
    public function oneToMany(){
        return Member::with('getManyGroups')->get();
    }
    public function groupMemebers(){
        return Group::with('getManyMembers')->get();
    }
}
