<?php

namespace App\Http\Controllers\WEB\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\SectionTitel;
use App\Models\PasswordReset;

use Carbon\Carbon;
Use Hash;
use Validator;
use Auth;
use Session;
use Str;
use URL;
use Mail, Config;
use App\Helpers\MailHelper;
use App\Models\EmailTemplate;
use App\Mail\UserForgetPassword;
use App\Mail\UserRegistration;

class UserLoginController extends Controller
{
    public function index()
    {
        return view('frontend.auth.login');
    }

    public function login(Request $request)
    {

        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ],[
            'email.required' => trans('translate.Email is required'),
            'password.required' => trans('translate.Password is required'),
        ]);

        $user = User::where([
            'email' => $request->email
        ])->first();


        if(!$user){
            $message = trans('translate.Please profile valid information');
            $notification = array('message'=> $message,'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }

        if($user->verify_token != null){
            $message = trans('translate.Please verify your email');
            $notification = array('message'=> $message,'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }

        if(Auth::attempt($request->only('email','password'))){
            $message = trans('translate.Login successfully');
            $notification = array('message'=> $message,'alert-type' => 'success');
            return redirect()->route('user.dashboard')->with($notification);
        }

        $message = trans('translate.Please profile valid information');
        $notification = array('message'=> $message,'alert-type' => 'error');
        return redirect()->back()->with($notification);
    }

    public function registerView()
    {
        return view('frontend.auth.register');
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => [
                'required',
                'string',
                'min:8',
                'regex:/[A-Z]/',
                'regex:/[a-z]/',
                'regex:/[0-9]/',
                'regex:/[@$!%*?&]/',
                'confirmed',
            ],
        ]);
    
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'verify_token' => Str::random(100),
        ]);
    
        $domain = URL::to('/');
        $verify_link = $domain . '/verify/user/email?token=' . $user->verify_token . '&email=' . $user->email;
        $verify_link = '<a href="' . $verify_link . '">' . $verify_link . '</a>';
    
        config([
            'mail.mailers.smtp.host' => env('MAIL_HOST'),
            'mail.mailers.smtp.port' => env('MAIL_PORT'),
            'mail.mailers.smtp.encryption' => env('MAIL_ENCRYPTION'),
            'mail.mailers.smtp.username' => env('MAIL_USERNAME'),
            'mail.mailers.smtp.password' => env('MAIL_PASSWORD'),
        ]);
    
        $template = EmailTemplate::where('id', 4)->first();
        if (!$template) {
            \Log::error('Email template not found.');
            return redirect()->back()->withErrors(['email_template' => 'Email template not found.']);
        }
    
        $subject = $template->subject;
        $message = $template->description;
        $message = str_replace('{{user_name}}', $request->name, $message);
        $message = str_replace('{{verify_link}}', $verify_link, $message);
    
        try {
            Mail::to($user->email)->send(new UserRegistration($message, $subject));
        } catch (\Exception $e) {
            \Log::error('Email sending failed: ' . $e->getMessage());
            return redirect()->back()->withErrors(['email' => 'Failed to send email.']);
        }
    
        return redirect()->route('login')->with('message', 'A verification link has been sent to your email.');
    }
    
    
    
    public function verify_user_email(Request $request){

        $user = User::where([
            'email' => $request->email,
            'verify_token' => $request->token,
        ])->first();

        if($user)
        {
           $user->verify_token = null;
           $user->save();

            $message = trans('translate.Verify successful, please try to login');
            $notification = array('message'=> $message,'alert-type' => 'success');
            return redirect()->route('login')->with($notification);
        }else{
            $message = trans('translate.Something went wrong, please try again');
            $notification = array('message'=> $message,'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }
    }

    public function LogOut(){
        Session::flush();
        Auth::logout();

        $message = trans('translate.Logout successfully');
        $notification = array('message'=> $message,'alert-type' => 'success');
        return redirect()->route('index')->with($notification);
    }

    public function Forgot()
    {
        return view('frontend.auth.reset');
    }

    public function ForgotPassword(Request $request)
    {
        $user = user::where('email',$request->email)->first();
        if($user)
        {
            $token = Str::random(50);
            $domain = URL::to('/');
            $url = $domain.'/reset/password?token='.$token;
            $url = '<a href="'.$url.'">'.$url.'</a>';

            MailHelper::setMailConfig();

            $template = EmailTemplate::where('id',1)->first();
            $subject = $template->subject;
            $message = $template->description;
            $message = str_replace('{{name}}',$user->name,$message);
            $message = str_replace('{{reset_link}}',$url,$message);
            Mail::to($user->email)->send(new UserForgetPassword($message,$subject,$user));


            $dateTime = Carbon::now()->format('Y-m-d H:i:s');
            $setToken = PasswordReset::updateOrCreate(
                ['email' => $request->email],
                [
                    'email' => $request->email,
                    'token' => $token,
                    'created_at' => $dateTime
                ]
            );

            $message = trans('translate.Forget password link has been send to your mail. please click the link and reset the password');
            $notification = array('message' => $message,'alert-type' => 'success');
            return redirect()->back()->with($notification);

        }else{
            $message = trans('translate.Email not found');
            $notification = array('message'=> $message,'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }
    }

    public function ResetPassword(Request $request)
    {
        $section =  "SectionTitel::first()";
        $token = $request->token;
        $email = PasswordReset::where('token',$request->token)->get();
        if(isset($request->token) && count($email)>0)
        {
            $user = user::where('email',$email[0]['email'])->get();
            return view('frontend.auth.reset_password',compact('user','section'));
        }
        else{
            $message = trans('translate.Something went wrong, please try again');
            $notification = array('message'=> $message,'alert-type' => 'error');
            return redirect()->route('forgot.password.user')->with($notification);
        }

    }

    public function SetPassword(Request $request)
    {
        $request->validate([
            'password' => 'required|confirmed|min:4'
        ]);


        $admin = user::find($request->id);

        $update = $admin->update([
            'password' => Hash::make($request->password)
        ]);
        if($update)
        {
            $message = trans('translate.Password reset successful. please try to login');
            $notification = array('message'=> $message,'alert-type' => 'success');
            return redirect()->route('login')->with($notification);
        }
    }


}
