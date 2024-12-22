<?php

namespace App\Http\Controllers\WEB\Frontend;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Product;
use App\Models\Setting;
use App\Models\User;
use App\Models\SeoSetting;
use App\Models\TimeSlot;
use App\Models\Country;
use App\Models\Addresse;
use App\Models\MobileApp;
use App\Models\SectionTitel;
use App\Models\Cart;
use App\Models\CartAddons;
use App\Models\CartItem;
use App\Models\Coupon;
use App\Models\ApplyCoupon;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\RazorpayPayment;
use App\Models\PaystackAndMollie;
use App\Models\Flutterwave;
use App\Models\StripePayment;
use App\Models\Shipping;
use App\Models\BankPayment;
use App\Models\PaypalPayment;
use App\Models\Admin;
use App\Models\DeleveryArea;
use App\Models\InstamojoPayment;
use App\Models\ContactPage as ContactUs;
use Validator;
use Auth;

class CheckoutController extends Controller
{
    public function delivery(Request $request){
        if(Auth::user()){
            $data['DeleveryAreas'] = DeleveryArea::all();
            $data['seo_setting'] =  "SeoSetting::where('id',12)->first()";
            $data['setting'] =  Setting::first();
            $data['app'] =  "MobileApp::first()";
            $data['section'] =  "SectionTitel::first()";
            $data['slots'] = "TimeSlot::orderBy('id','asc')->get())";
            $data['branchs'] = Admin::where('status',1)->orderBy('id','asc')->get();
            $data['countries'] = "Country::all()";
            $data['address'] = $data['address'] = Addresse::where('user_id', Auth::user()->id)->get();
           
            $data['cart'] = $request->session()->get('cart', []);
            $data['vatCharge'] = $data['setting']->vat_rate;
            $data['deleveryCharge'] = 0;
            $check = ApplyCoupon::with('coupon')->where(['user_id' => auth::user()->id])->first();
            if($check){
                if($check->coupon->offer_type == '%'){
                    $data['discount'] = ($check->coupon->discount / 100);
                }else{
                    $data['discount'] = $check->coupon->discount;
                }
            }else{
                $data['discount'] = 0;
            }
            return view('frontend.pages.checkout',$data);
        }else{
            $message = trans('translate.Please login first');
            $notification = array('message' => $message, 'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }
    }

    public function pickUp(Request $request){
        if(Auth::user()){
            $data['seo_setting'] =  "SeoSetting::where('id',12)->first()";
            $data['setting'] =  Setting::first();
            $data['app'] =  "MobileApp::first()";
            $data['section'] =  "SectionTitel::first()";
            $data['slots'] = "TimeSlot::orderBy('id','asc')->get())";
            $data['contact'] = "ContactUs::first()";
            $data['branchs'] = Admin::where('status',1)->orderBy('id','asc')->get();
            $data['cart'] = $request->session()->get('cart', []);
            $data['deleveryCharge'] = 0;
            $check = ApplyCoupon::with('coupon')->where(['user_id' => auth::user()->id])->first();
            $data['vatCharge'] = $data['setting']->vat_rate;
            if($check){
                if($check->coupon->offer_type == '%'){
                    $data['discount'] = ($check->coupon->discount / 100);
                }else{
                    $data['discount'] = $check->coupon->discount;
                }
            }else{
                $data['discount'] = 0;
            }

            $data['cart_data'] =  Cart::where('user_id',auth::user()->id)->first();

            return view('frontend.pages.pickup',$data);
        }else{
            $message = trans('translate.Please login first');
            $notification = array('message' => $message, 'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }
    }

    public function inResturent(Request $request){
        if(Auth::user()){
            $data['seo_setting'] =  "SeoSetting::where('id',12)->first()";
            $data['setting'] =  Setting::first();
            $data['app'] =  "MobileApp::first()";
            $data['section'] =  "SectionTitel::first()";
            $data['slots'] = "TimeSlot::orderBy('id','asc')->get())";
            $data['contact'] = "ContactUs::first()";
            $data['branchs'] = Admin::where('status',1)->orderBy('id','asc')->get();
            $data['cart'] = $request->session()->get('cart', []);
            $data['deleveryCharge'] = 0;
            $check = ApplyCoupon::with('coupon')->where(['user_id' => auth::user()->id])->first();
            $data['vatCharge'] = $data['setting']->vat_rate;
            if($check){
                if($check->coupon->offer_type == '%'){
                    $data['discount'] = ($check->coupon->discount / 100);
                }else{
                    $data['discount'] = $check->coupon->discount;
                }
            }else{
                $data['discount'] = 0;
            }

            $data['cart_data'] =  Cart::where('user_id',auth::user()->id)->first();

            return view('frontend.pages.inrestaurant',$data);
        }else{
            $message = trans('translate.Please login first');
            $notification = array('message' => $message, 'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }
    }

 

    public function applyCoupon(Request $request)
    {
        try {
            // Find the coupon
            $coupon = Coupon::where(['code' => $request->coupon, 'status' => 'active'])->first();
    
            if (!$coupon) {
                return response()->json(['success' => false, 'message' => trans('translate.Your provided coupon is invalid')]);
            }
    
            if ($coupon->expired_date < date('Y-m-d')) {
                return response()->json(['success' => false, 'message' => trans('translate.Your provided coupon has expired')]);
            }
    
            if ($coupon->apply_qty >= $coupon->max_quantity) {
                return response()->json(['success' => false, 'message' => trans('translate.Your provided coupon limit is exceeded')]);
            }
    
            // Apply the coupon
            $cartData = Cart::where(['user_id' => auth()->id()])->first();
            if (!$cartData) {
                return response()->json(['success' => false, 'message' => trans('translate.Cart is empty')]);
            }
    
            $discountAmount = $coupon->offer_type == '%'
                ? $cartData->total * ($coupon->discount / 100)
                : $coupon->discount;
    
            $grandTotal = $cartData->total - $discountAmount + $cartData->delevery_charge + $cartData->vat_charge;
    
            // Update cart
            $cartData->update([
                'discount_amount' => $discountAmount,
                'grand_total' => $grandTotal,
            ]);
    
            // Update coupon usage count
            $coupon->increment('apply_qty');
    
            return response()->json([
                'success' => true,
                'message' => trans('translate.Coupon applied successfully'),
                'subtotal' => $cartData->total,
                'discount' => $discountAmount,
                'delivery_charge' => $cartData->delevery_charge,
                'vat_charge' => $cartData->vat_charge,
                'grand_total' => $grandTotal,
              
            ]);
        } catch (\Exception $e) {
            Log::error('Error applying coupon: ', ['error' => $e->getMessage()]);
            return response()->json(['success' => false, 'message' => 'An error occurred. Please try again.'], 500);
        }
    }
    
    



    public function processOrder(Request $request){

        $req_type =$request->type;
        if(Auth::user()){

            $rules = [
                'delevery_day'=>'required',
                'delevery_time'=>'required',
                'branch'=>'required',
            ];
            $customMessages = [
                'delevery_day.required' => trans('translate.Delivery day is required'),
                'delevery_time.required' => trans('translate.Delivery time is required'),
                'branch.required' => trans('translate.Branch is required'),
            ];
            $this->validate($request, $rules,$customMessages);

            if( $request->type == 'delivery'){
                if($request->address_id == ''){
                     $message = 'Address is required';
                    $notification = array('message' => $message, 'alert-type' => 'error');
                    return redirect()->back()->with($notification);
                }
                $findAddress = Addresse::where('id',$request->address_id)->first();
                if($findAddress){
                    $shipping = DeleveryArea::where('id',$findAddress->area_id)->first();
                    if($shipping){
                         $delevery_charge = $shipping->fee;
                    }else{
                         $delevery_charge = 0;
                    }
                }else{
                     $delevery_charge = 0;
                }
            }else{
                 $delevery_charge = 0;
            }
            $check = Cart::where(['user_id' => auth::user()->id])->first();
            if($check){
                $cart = Cart::find($check->id);
                $cart->user_id = auth::user()->id;
                $cart->type = $req_type;
                $cart->number_of_gest = $request->number_of_gest;
                $cart->address_id = $request->address_id;
                $cart->delevery_day = $request->delevery_day;
                $cart->delevery_time_id = $request->delevery_time;
                $cart->discount_amount = $request->discount_amount;
                $cart->delevery_charge = $delevery_charge;
                $cart->vat_charge = $request->vat_charge;
                $cart->total = $request->total;
                $cart->grand_total = $request->grand_total + $delevery_charge;
                $cart->save();
            }else{
                $cart = new Cart();
                $cart->user_id = auth::user()->id;
                $cart->type = $req_type;
                $cart->number_of_gest = $request->number_of_gest;
                $cart->address_id = $request->address_id;
                $cart->delevery_day = $request->delevery_day;
                $cart->delevery_time_id = $request->delevery_time;
                $cart->discount_amount = $request->discount_amount;
                $cart->delevery_charge = $delevery_charge;
                $cart->vat_charge = $request->vat_charge;
                $cart->total = $request->total;
                $cart->grand_total = $request->grand_total + $delevery_charge;
                $cart->save();

            }

            return redirect()->route('select.payment.method');

        }else{
            $message = trans('translate.Please login first');
            $notification = array('message' => $message, 'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }
    }

    public function selectPayment(Request $request){
        $data['razorpay'] = "RazorpayPayment::first()";
        $data['paypal_payment'] = "PaypalPayment::first()";
        $data['paystack'] = "PaystackAndMollie::first()";
        $data['flutterwave'] = "Flutterwave::first()";
        $data['stripe'] = StripePayment::first();
        $data['bankPayment']  = "Flutterwave::first()";
        $data['instamojo'] =" InstamojoPayment::first()";

        $data['seo_setting'] =  "SeoSetting::where('id',12)->first()";
        $data['setting'] =  Setting::first();
        $data['app'] =  "MobileApp::first()";
        $data['section'] =  "SectionTitel::first()";
        $data['cart_data'] =  Cart::where('user_id',auth::user()->id)->first();
        $data['cart'] = $request->session()->get('cart', []);
        $cart =  Cart::where('user_id',Auth::user()->id)->first();
        $data['order_total'] =  $cart->grand_total;

        return view('frontend.pages.select_payment',$data);
    }

    public function checkOut(Request $request){
        $cart_detils = Cart::where(['user_id' => auth::user()->id])->first();
         $cartData = $request->session()->get('cart', []);

        $payment_method = "CashOnDelivery";
        $payment_status = "Pending";

        $order = new Order();
        $order->user_id = auth::user()->id;
        $order->type = $cart_detils->type;
        $order->number_of_gest = $cart_detils->number_of_gest;
        $order->address_id = $cart_detils->address_id;
        $order->delevery_day = $cart_detils->delevery_day;
        $order->delevery_time_id = $cart_detils->delevery_time_id;
        $order->discount_amount = $cart_detils->discount_amount;
        $order->delevery_charge = $cart_detils->delevery_charge;
        $order->vat_charge = $cart_detils->vat_charge;
        $order->total = $cart_detils->total;
        $order->grand_total = $cart_detils->grand_total;
        $order->payment_method = $payment_method;
        $order->payment_status = $payment_status;
        $order->order_status = 1;

        if($order->save()){
            // Save order items
            foreach ($cartData as $item) {
                OrderItem::create([
                    'order_id' => $order->id,
                    'product_id' => $item['product_id'],
                    'size' => $item['size'],
                    'addons' => $item['addons'],
                    'qty' => $item['qty'],
                    'total' => $item['total'],
                ]);
            }

            Cart::where('user_id', auth()->user()->id)->delete();
            ApplyCoupon::where('user_id', auth()->user()->id)->delete();
            Session::forget('cart');
        }

        $message = trans('translate.Thanks for your order. Your order has been placed');
        $notification = array('message' => $message, 'alert-type' => 'success');
        return redirect()->route('index')->with($notification);
    }


}
