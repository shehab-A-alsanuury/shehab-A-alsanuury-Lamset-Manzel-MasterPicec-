<?php

namespace App\Http\Controllers\WEB\Admin;
use Illuminate\Support\Facades\DB; // Import DB facade

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\Admin;
use App\Models\vendor_social_link;
use App\Models\maintainance_text;
use App\Models\LoginActivity;
use App\Models\EmailConfiguration;

use App\Models\StripePayment;
use App\Models\Flutterwave;
use App\Models\PaystackAndMollie;
use App\Models\RazorpayPayment;
use App\Models\InstamojoPayment;
use App\Models\paypal_payment;
use App\Models\pricing_plan;
use App\Models\AppLink;
use App\Models\GoogleRecaptcha;
use App\Models\GoogleAnalytic;
use App\Models\TawkChat;
use App\Models\Language;
use Validator;
use Hash;
use Image;
use Str;
use Auth;


class SettingsController extends Controller
{
    public function index()
    {
        $admin = Auth::guard('admin')->user();
        $admin_id = $admin->id;

        $ip = request()->ip();
        $app = request('User-Agent');
        $login_activity = LoginActivity::where('admin_id',$admin_id)->get();
        $setting = Setting::first();
        $admin = Admin::find($admin_id);
        $email_configuration = "EmailConfiguration::first()";

        $flutterwave = "Flutterwave::first()";
        $stripe_payment = StripePayment::select('stripe_key')->first();
        $razorpay = "RazorpayPayment::first()";
        $app_link = "AppLink::first()";
        $googleRecaptcha = "GoogleRecaptcha::first()";
        $tawk_chat = TawkChat::first();
        $googleAnalytic = "GoogleAnalytic::first()";
        $languages = Language::orderBy('id','ASC')->get();
        return view('admin.settings',compact('setting','admin','login_activity','email_configuration','app_link','googleRecaptcha','tawk_chat','googleAnalytic','languages'));
    }


    public function ChnageLoginPageImages(Request $request)
{
    try {
        $uploadDirectory = 'uploads/website-images/';
        $updatedData = [];
        $setting = Setting::find(1);

        if ($request->hasFile('logo')) {
            $logoName = 'login-page-logo-' . time() . '.' . $request->file('logo')->getClientOriginalExtension();
            $request->file('logo')->move(public_path($uploadDirectory), $logoName);
            $updatedData['logo'] = $uploadDirectory . $logoName;
        } else {
            $updatedData['logo'] = $setting->logo;
        }

        if ($request->hasFile('stiky_logo')) {
            $stikyLogoName = 'stiky-logo-' . time() . '.' . $request->file('stiky_logo')->getClientOriginalExtension();
            $request->file('stiky_logo')->move(public_path($uploadDirectory), $stikyLogoName);
            $updatedData['stiky_logo'] = $uploadDirectory . $stikyLogoName;
        } else {
            $updatedData['stiky_logo'] = $setting->stiky_logo;
        }

        if ($request->hasFile('favicon')) {
            $faviconName = 'favicon-' . time() . '.' . $request->file('favicon')->getClientOriginalExtension();
            $request->file('favicon')->move(public_path($uploadDirectory), $faviconName);
            $updatedData['favicon'] = $uploadDirectory . $faviconName;
        } else {
            $updatedData['favicon'] = $setting->favicon;
        }

        if ($request->hasFile('login_page_image')) {
            $loginImageName = 'login-page-image-' . time() . '.' . $request->file('login_page_image')->getClientOriginalExtension();
            $request->file('login_page_image')->move(public_path($uploadDirectory), $loginImageName);
            $updatedData['login_page_image'] = $uploadDirectory . $loginImageName;
        } else {
            $updatedData['login_page_image'] = $setting->login_page_image;
        }

        if ($request->hasFile('login_page_bg')) {
            $loginBgName = 'login-page-bg-' . time() . '.' . $request->file('login_page_bg')->getClientOriginalExtension();
            $request->file('login_page_bg')->move(public_path($uploadDirectory), $loginBgName);
            $updatedData['login_page_bg'] = $uploadDirectory . $loginBgName;
        } else {
            $updatedData['login_page_bg'] = $setting->login_page_bg;
        }

        // Execute custom SQL to update the settings table
        $updateQuery = "UPDATE settings SET 
            logo = ?, 
            stiky_logo = ?, 
            favicon = ?, 
            login_page_image = ?, 
            login_page_bg = ? 
            WHERE id = ?";
        DB::update($updateQuery, [
            $updatedData['logo'],
            $updatedData['stiky_logo'],
            $updatedData['favicon'],
            $updatedData['login_page_image'],
            $updatedData['login_page_bg'],
            $setting->id
        ]);

        \Log::info("Updated Fields: ", $updatedData);
        \Log::info("Database update successful for Setting ID: " . $setting->id);

        $message = "Update successfully";
        $notification = array('message' => $message, 'alert-type' => 'success');
        return redirect()->back()->with($notification);

    } catch (\Exception $e) {
        \Log::error("Update failed: " . $e->getMessage());
        $message = $e->getMessage();
        $notification = array('message' => $message, 'alert-type' => 'error');
        return redirect()->back()->with($notification);
    }
}

    
public function UpdateProfile(Request $request, $id)
{
    try {
        // Validate the incoming request
        $validate = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required|string|email',
        ]);

        if ($validate->fails()) {
            return redirect()->back()->withErrors($validate->errors())->withInput();
        }

        // Fetch the current admin record
        $admin = Admin::find($id);

        if (!$admin) {
            $message = "Admin not found";
            $notification = array('message' => $message, 'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }

        $uploadDirectory = 'uploads/custom-images/';
        $updatedData = [];

        // Handle the profile image upload
        if ($request->hasFile('image')) {
            $imageName = Str::slug($request->name) . '-' . time() . '.' . $request->file('image')->getClientOriginalExtension();
            $request->file('image')->move(public_path($uploadDirectory), $imageName);
            $updatedData['image'] = $uploadDirectory . $imageName;

            // Delete the old image if it exists
            if ($admin->image && file_exists(public_path($admin->image))) {
                unlink(public_path($admin->image));
            }
        } else {
            $updatedData['image'] = $admin->image;
        }

        // Update the admin record using a custom SQL query
        $updateQuery = "UPDATE admins SET name = ?, email = ?, image = ? WHERE id = ?";
        DB::update($updateQuery, [
            $request->name,
            $request->email,
            $updatedData['image'],
            $id
        ]);

        \Log::info("Updated Admin Profile: ", $updatedData);
        \Log::info("Database update successful for Admin ID: " . $id);

        $message = "Updated successfully";
        $notification = array('message' => $message, 'alert-type' => 'success');
        return redirect()->back()->with($notification);

    } catch (\Exception $e) {
        \Log::error("Update failed: " . $e->getMessage());
        $message = $e->getMessage();
        $notification = array('message' => $message, 'alert-type' => 'error');
        return redirect()->back()->with($notification);
    }
}


    public function AddSocialLink(Request $request)
    {
            $admin_id = Auth::guard('admin')->user()->id;
        try{
            $validate = Validator::make($request->all(),[
                'name' => 'required',
                'icon' => 'required',
                'link' => 'required',
                'status' => 'required'
            ]);
            if($validate->fails()){
                return redirect()->back()->with('Emsg',$validate->errors());
            }
            $vendor_link_setup = vendor_social_link::create([
                'name' => $request->name,
                'vendor_id' => 0,
                'admin_id' => $admin_id,
                'icon' => $request->icon,
                'link' => $request->link,
                'status' => $request->status
            ]);
            if($vendor_link_setup)
            {
                $message = "Added social link";
                $notification = array('message' => $message, 'alert-type'=> 'success');
                return redirect()->back()->with($notification);
            }
        }catch(\Exception $e)
        {
            $message = $e->getMessage();
            $notification = array('message' => $messagem, 'alert-type'=> 'error');
            return redirect()->back()->with($notification);

        }
    }
    //Delete Social Account
    public function DeleteSocialLink($id)
    {
        try{
            $social_link  = vendor_social_link::find($id);
        $delete = $social_link->delete();
        if($delete)
        {
            $message = "Delete Social Icon Successfully";
            $notification = array('message' => $message, 'alert-type'=> 'success');
            return redirect()->back()->with($notification);
        }
        }catch(\Exception $e)
        {
            $message = $e->getMessage();
            $notification = array('message' => $message, 'alert-type'=> 'success');
            return redirect()->back()->with($notification);
        }
    }
    public function DeleteLoginActivity($id)
    {
        try
        {

            $login_activity = LoginActivity::find($id);
        $delete = $login_activity->delete();
        if($delete)
        {
            $message = "Delete Login History";
            $notification = array('message' => $message, 'alert-type'=> 'success');
            return redirect()->back()->with($notification);
        }

        }catch(\Exception $e)
        {
            $message = $e->getMessage();
            $notification = array('message' => $message, 'alert-type'=> 'success');
            return redirect()->back()->with($notification);
        }
    }
    public function generalSetting(Request $request, $id)
    {
        $validate = Validator::make($request->all(), [
         
            'currency_name' => 'required',
            'currency_icon' => 'required',
            'vat_rate' => 'required',
            'app_visibility' => 'required',
            'lang_key' => 'required',
        ]);
    
        if ($validate->fails()) {
            // Corrected the method name from 'erros()' to 'errors()'
            $message = $validate->errors()->first(); // Get the first error message for notification
            $notification = ['message' => $message, 'alert-type' => 'error'];
            return redirect()->back()->with($notification);
        }
    
        try {
            Setting::where('id', $id)->update([
             
                'currency_name' => $request->currency_name,
                'currency_icon' => $request->currency_icon,
                'vat_rate' => $request->vat_rate,
                'timezone' => $request->timezone,
                'app_visibility' => $request->app_visibility,
                'app_name' => $request->app_name,
            ]);
    
            $message = "Settings updated successfully";
            $notification = ['message' => $message, 'alert-type' => 'success'];
            return redirect()->back()->with($notification);
    
        } catch (\Exception $e) {
            $message = "Error occurred: " . $e->getMessage();
            $notification = ['message' => $message, 'alert-type' => 'error'];
            return redirect()->back()->with($notification);
        }
    }
    


    public function emailConfigaration(Request $request)
    {
        $validate = Validator::make($request->all(),[
            'mailer' => 'required',
            'mail_host' => 'required',
            'mail_port' => 'required',
            'smtp_username' => 'required|string',
            'smtp_password' => 'required',
            'mail_encryption' => 'required',
            'email' => 'required|email|string',
        ]);
        if($validate->fails())
        {
            $message = $validate->errors();
            $notification = array('message' => $message, 'alert-type' =>'error');
            return redirect()->back()->with($notification);
        }
        $email_configuration = email_configuration::first();
        $email_configuration->update([
            'mailer' => $request->mailer,
            'mail_host' => $request->mail_host,
            'mail_port' => $request->mail_port,
            'smtp_username' => $request->smtp_username,
            'smtp_password' => $request->smtp_password,
            'mail_encryption' => $request->mail_encryption,
            'email' => $request->email,
        ]);
        $message = "Email Credantail updated successfully!!";
        $notification = array('message' => $message, 'alert-type' =>'success');
        return redirect()->back()->with($notification);

    }




    public function AppLinkUpdate(Request $request,$id)
    {
        $validate = Validator::make($request->all(),[
            'android_link' => 'required',
            'ios_link' => 'required',
        ]);
        if($validate->fails())
        {
            $message = $validate->errors();
            $notification = array('message' => $message, 'alert-type' =>'error');
            return redirect()->back()->with($notification);
        }

        $app_link = app_link::find($id);
        $old_image = $app_link->image;
        $old_android_app_image = $app_link->android_link_image;
        $old_ios_app_image = $app_link->ios_link_image;

        if($request->image){
            $extention = $request->image->getClientOriginalExtension();
            $image = Str::slug($request->name).date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image = 'uploads/web-image/'.$image;
            Image::make($request->image)
                ->save(public_path().'/'.$image);
        }else{
            $image = $old_image;
        }

        if($request->android_link_image){
            $extention = $request->android_link_image->getClientOriginalExtension();
            $android_link_image = Str::slug($request->name).date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $android_link_image = 'uploads/web-image/'.$android_link_image;
            Image::make($request->android_link_image)
                ->save(public_path().'/'.$android_link_image);
        }else{
            $android_link_image = $old_android_app_image;
        }

        if($request->ios_link_image){
            $extention = $request->android_link_image->getClientOriginalExtension();
            $ios_link_image = Str::slug($request->name).date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $ios_link_image = 'uploads/web-image/'.$ios_link_image;
            Image::make($request->ios_link_image)
                ->save(public_path().'/'.$ios_link_image);
        }else{
            $ios_link_image = $old_ios_app_image;
        }

        app_link::where('id',$id)->update([
            'image' => $image,
            'android_link' => $request->android_link,
            'ios_link' => $request->ios_link,
            'android_link_image' => $android_link_image,
            'ios_link_image' => $ios_link_image,
        ]);
        $message = "Updated successfully!!";
        $notification = array('message' => $message, 'alert-type' =>'success');
        return redirect()->back()->with($notification);

    }
    public function updateGoogleRecaptcha(Request $request)
    {

        $google = GoogleRecaptcha::first();

        $google->site_key = $request->site_key;
        $google->secret_key = $request->secret_key;
        $google->status = $request->status;
        $google->save();

        $message = "Updated successfully!!";
        $notification = array('message' => $message, 'alert-type' =>'success');
        return redirect()->back()->with($notification);

    }

    public function updateTawkIo(Request $request)
    {

        $tawk = TawkChat::first();
        $tawk->chat_link = $request->chat_link;
        $tawk->status = $request->status;
        $tawk->save();

        $message = "Updated successfully!!";
        $notification = array('message' => $message, 'alert-type' =>'success');
        return redirect()->back()->with($notification);
    }

    public function updateGoogleAnalytic(Request $request)
    {

        $google_analytic = GoogleAnalytic::first();
        $google_analytic->analytic_id = $request->analytic_id;
        $google_analytic->status = $request->status;
        $google_analytic->save();

        $message = "Updated successfully!!";
        $notification = array('message' => $message, 'alert-type' =>'success');
        return redirect()->back()->with($notification);
    }


}
