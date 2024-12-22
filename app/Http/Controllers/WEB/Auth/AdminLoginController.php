<?php

namespace App\Http\Controllers\WEB\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Redirect;
Use Hash;
use Auth;
use Validator;

class AdminLoginController extends Controller
{
    public function index(){
        return view('admin.auth.login');
    }

    public function Login(Request $request){
        $rules = [
            'email'=>'required|email',
            'password'=>'required',
        ];

        $customMessages = [
            'email.required' => trans('Email is required'),
            'password.required' => trans('Password is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $credential=[
            'email'=> $request->email,
            'password'=> $request->password
        ];

        $isAdmin=Admin::where('email',$request->email)->first();
        if($isAdmin){
            if($isAdmin->status==1){
                if(Hash::check($request->password,$isAdmin->password)){
                    if(Auth::guard('admin')->attempt($credential,$request->remember)){
                        $notification= trans('Login Successfully');
                        $notification = array('message'=> $notification,'alert-type' => 'success');
                        return redirect()->route('admin.dashboard')->with($notification);
                    }
                }else{
                    $notification= trans('Invalid Password');
                    $notification = array('message'=> $notification,'alert-type' => 'error');
                    return redirect()->back()->with($notification);
                }
            }else{
                $notification= trans('Inactive account');
                $notification = array('message'=> $notification,'alert-type' => 'error');
                return redirect()->back()->with($notification);
            }
        }else{
            $notification= trans('Invalid Email');
            $notification = array('message'=> $notification,'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }
    }
    public function Logout()
    {
        Auth::guard('admin')->logout();
        $message = "Logout Successfully";
        $notification=array('message'=>$message,'alert-type'=>'success');
        return redirect()->route('admin.login')->with($notification);
    }
}
