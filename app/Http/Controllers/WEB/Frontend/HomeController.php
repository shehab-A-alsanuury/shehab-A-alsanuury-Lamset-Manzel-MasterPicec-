<?php

namespace App\Http\Controllers\WEB\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Slider;
use App\Models\Category;
use App\Models\Product;
use App\Models\Partner;
use App\Models\CraftingProcess;
use App\Models\Faq;
use App\Models\FaqImages;
use App\Models\Testimonial;
use App\Models\Blog;
use App\Models\MobileApp;
use App\Models\SectionTitel;
use App\Models\AboutUs;
use App\Models\ContactPage;
use App\Models\ProductGallery;
use App\Models\Subscriber;
use App\Models\ContactMessage;
use App\Models\Review;
use App\Models\Setting;
use App\Models\User;
use App\Models\BlogComment;
use App\Models\RazorpayPayment;
use App\Models\Flutterwave;
use App\Models\SeoSetting;
use App\Models\TermsAndCondition;
use App\Models\Wishlist;
use App\Models\BlogTranslate;
use Validator;
use Auth, Str, URL, Mail;
use App\Helpers\MailHelper;
use App\Models\EmailTemplate;
use App\Mail\SubscriptionVerification;
use App\Models\Language;

class HomeController extends Controller
{
    public function setLanguage($lang_code){
        $language = Language::where('lang_code', $lang_code)->first();
        Session::put('front_lang', $lang_code);
        Session::put('front_lang_name', $language->name);
        app()->setLocale($lang_code);

        $notification= trans('translate.Language switched successfully');
        $notification=array('message'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);

    }

    public function index(){

        $data['setting'] =  Setting::first();

        if($data['setting']->theam == 0){
            if(!Session::has('selected_theme')){
                if($data['setting']->theam == 1){
                    Session::put('selected_theme', 'theme_one');
                }elseif($data['setting']->theam == 2){
                    Session::put('selected_theme', 'theme_two');
                }else{
                    Session::put('selected_theme', 'theme_one');
                }
            }
        }else{
            if($data['setting']->theam == 1){
                Session::put('selected_theme', 'theme_one');
            }elseif($data['setting']->theam == 2){
                Session::put('selected_theme', 'theme_two');
            }else{
                Session::put('selected_theme', 'theme_one');
            }
        }


        if(Session::get('selected_theme') == 'theme_one'){
            $data['seo_setting'] =  "SeoSetting::where('id',1)->first()";
            $data['slider'] = Slider::first();
            $data['categories'] = Category::where('status', 'active')->take(10)->get();
            $data['Allcategories'] = Category::where('status', 'active')->get();
            $data['product'] = Product::where('status', 'active')->take(15)->get();
            $data['product2'] = Product::where('status', 'active')->take(8)->get();
            $data['product3'] = Product::where('is_populer', '1')->take(6)->get();
            $data['promotions'] ="Partner::orderBy('id','DESC')->get()";
            $data['crafting'] =  "CraftingProcess::first()";
            $data['faqs'] =  "Faq::where('status', 'active')->orderBy('id','DESC')->paginate(4)";
            $data['faqAbout'] = "FaqImages::first()";
            $data['blogs'] = Blog::where('status', 'active')->get();
            $data['section'] =  "SectionTitel::first()";
            return view('frontend.pages.index2',$data);
        }elseif(Session::get('selected_theme') == 'theme_two'){
             $data['seo_setting'] =  SeoSetting::where('id',1)->first();
             $data['slider'] = Slider::first();
             $data['categories'] = Category::where('status', 'active')->take(10)->get();
             $data['Allcategories'] = Category::where('status', 'active')->get();
             $data['product'] = Product::where('status', 'active')->take(15)->get();
             $data['product2'] = Product::where('status', 'active')->take(8)->get();
             $data['product3'] = Product::where('status', 'active')->take(6)->get();
             $data['promotions'] = "Partner::orderBy('id','DESC')->get()";
             $data['crafting'] =  "CraftingProcess::first()";
             $data['faqs'] =  "Faq::where('status', 'active')->orderBy('id','DESC')->paginate(4)";
             $data['faqAbout'] = "FaqImages::first()";
             $data['testimonials'] =  Testimonial::where('status', 'active')->paginate(10);
             $data['blogs'] = Blog::where('status', 'active')->get();
                  $data['section'] =  "SectionTitel::first()";
             return view('frontend.pages.index',$data);
        }else{
            $data['seo_setting'] =  "SeoSetting::where('id',1)->first()";
            $data['slider'] = Slider::first();
            $data['categories'] = Category::where('status', 'active')->take(10)->get();
            $data['Allcategories'] = Category::where('status', 'active')->get();
            $data['product'] = Product::where('status', 'active')->take(15)->get();
            $data['product2'] = Product::where('status', 'active')->take(8)->get();
            $data['product3'] = Product::where('status', 'active')->take(6)->get();
            $data['promotions'] = "Partner::orderBy('id','DESC')->get()";
            $data['crafting'] =  "CraftingProcess::first()";
            $data['faqs'] =  "Faq::where('status', 'active')->orderBy('id','DESC')->paginate(4)";
            $data['faqAbout'] = "FaqImages::first()";
            $data['testimonials'] =  Testimonial::where('status', 'active')->paginate(10);
            $data['blogs'] = Blog::where('status', 'active')->get();
                $data['section'] =  "SectionTitel::first()";
            return view('frontend.pages.index2',$data);
        }

    }

    public function menu(Request $request){
        $data['seo_setting'] =  "SeoSetting::where('id',2)->first()";
        $data['setting'] =  Setting::first();
        $products = Product::where('status', 'active');

        if($request->category){
            $category = Category::where('slug', $request->category)->first();
            if($category){
                $products = $products->where('category_id', $category->id);
            }
        }

        if($request->keyword){
            $products = $products->whereHas('product_translate_lang', function ($query) use ($request) {
                            $query->where('name', 'like', '%' . $request->keyword . '%')
                                ->orWhere('long_description', 'like', '%' . $request->keyword . '%');
                        });

        }

        $products = $products->paginate(12);
        $data['products'] = $products->append($request->all());

        $data['faqs'] =  "Faq::where('status', 'active')->orderBy('id','DESC')->paginate(4)";
        $data['Allcategories'] = Category::where('status', 'active')->get();
        $data['faqAbout'] = "FaqImages::first()";
        return view('frontend.pages.menu',$data);
    }


    public function menuDetils($slug){
        $data['section'] =  "SectionTitel::first()";
        $data['product'] = Product::where('status','active')->where('slug',$slug)->first();
        $data['galleries'] = ProductGallery::orderBy('id','DESC')->where('product_id',$data['product']->id)->get();
        $data['promotions'] = "Partner::orderBy('id','DESC')->paginate(4)";
        $data['reviews'] = Review::where('status',1)->where('product_id',$data['product']->id)->orderBy('id','DESC')->get();
        $data['setting'] =  Setting::first();
        return view('frontend.pages.manu_detils',$data);
    }

    public function about(){
        // $data['seo_setting'] =  SeoSetting::where('id',3)->first();
        $data['setting'] =  Setting::first();
        // $data['section'] =  "SectionTitel::first()";
        // $data['faqs'] =  "Faq::where('status', 'active')->orderBy('id','DESC')->paginate(4)";
        // $data['faqAbout'] = "FaqImages::first()";
        $data['product'] = Product::where('status', 'active')->where('is_populer',1)->get();

        // $data['crafting'] =  "CraftingProcess::first()";
        // $data['about_us'] =  AboutUs::first();

        return view('frontend.pages.about',$data);
    }

    public function contact(){
        // $data['seo_setting'] =  SeoSetting::where('id',6)->first();
        $data['setting'] =  Setting::first();
        // $data['section'] =  "SectionTitel::first()";
        // $data['faqs'] =  "Faq::where('status', 'active')->orderBy('id','DESC')->paginate(4)";
        // $data['faqAbout'] = "FaqImages::first()";
        // $data['contactus'] = ContactPage::first();
        return view('frontend.pages.contact',$data);
    }

    public function blog(Request $request){
        $data['seo_setting'] =  "SeoSetting::where('id',9)->first()";
        $data['setting'] =  Setting::first();
        $data['section'] =  "SectionTitel::first()";
        $data['faqs'] =  "Faq::where('status', 'active')->orderBy('id','DESC')->paginate(4)";
        $data['faqAbout'] = "FaqImages::first()";
        $blogs = Blog::where('status', 'active');

        if($request->keyword){
            $blogs = $blogs->whereHas('blog_translate_lang', function ($query) use ($request) {
                            $query->where('title', 'like', '%' . $request->keyword . '%')
                                ->orWhere('description', 'like', '%' . $request->keyword . '%');
                        });

        }

        $blogs = $blogs->paginate(12);
        $data['blogs'] = $blogs->append($request->all());

        return view('frontend.pages.blog',$data);
    }

    public function blogDetils($slug){
        $data['section'] =  "SectionTitel::first()";
        $data['faqs'] =  "Faq::where('status', 'active')->orderBy('id','DESC')->paginate(4)";
        $data['faqAbout'] = "FaqImages::first()";
        $data['blog'] = Blog::where('status', 'active')->where('slug',$slug)->first();
        $data['blogs'] =  Blog::where('status', 'active')->orderBy('id','DESC')->paginate(4);
        $data['promotions'] = "Partner::orderBy('id','DESC')->orderBy('id','DESC')->paginate(4)";
        $data['comment'] = BlogComment::where('status',1)->where('blog_id',$data['blog']->id)->orderBy('id','DESC')->get();
        $data['setting'] =  Setting::first();
        return view('frontend.pages.blog_detils',$data);
    }

    public function wishList(){
        $data['seo_setting'] =  SeoSetting::where('id',10)->first();
        $data['setting'] =  Setting::first();
        $data['section'] =  "SectionTitel::first()";
        if (auth()->check()) {
            $user_id = auth()->user()->id;
            $wishlistItems = Wishlist::where('user_id', $user_id)->pluck('product_id')->toArray();
            if (!empty($wishlistItems)) {
                $data['product'] = Product::where('status', 'active')->whereIn('id', $wishlistItems)->get();
            } else {
                $data['product'] = [];
            }
        } else {
            $data['product'] = [];
        }
        return view('frontend.pages.wishlist',$data);
    }

    public function cartList(Request $request){
        $data['seo_setting'] =  "SeoSetting::where('id',11)->first()";
        $data['setting'] =  Setting::first();
        $data['section'] =  "SectionTitel::first()";
        $data['cart'] = $request->session()->get('cart', []);

        return view('frontend.pages.cart_detils',$data);
    }


    public function newsLatter(Request $request){
        $rules = [
            'email'=>'required'
        ];
        $customMessages = [
            'email.required' => trans('translate.Email is required'),
        ];
        $this->validate($request, $rules,$customMessages);
        if(Subscriber::where('email',$request->email)->first())
        {
           $message = trans('translate.Email already subscribed');
           $notification = array('message' => $message, 'alert-type' => 'error');
           return redirect()->back()->with($notification);
        }else{
            $subscriber = new Subscriber();
            $subscriber->email = $request->email;
            $subscriber->verified_token = Str::random(50);
            $subscriber->save();


            $domain = URL::to('/');
            $verify_link = $domain.'/newsletter/verify/email?token='.$subscriber->verified_token.'&email='.$subscriber->email;
            $verify_link = '<a href="'.$verify_link.'">'.$verify_link.'</a>';

            MailHelper::setMailConfig();

            $template = EmailTemplate::where('id',3)->first();
            $subject = $template->subject;
            $message = $template->description;
            $message = str_replace('{{verify_link}}',$verify_link,$message);
            Mail::to($subscriber->email)->send(new SubscriptionVerification($message,$subject));

            $message = trans('translate.A varification link has been send to your mail please verify the mail');
            $notification = array('message'=> $message,'alert-type' => 'success');
            return redirect()->back()->with($notification);


        }
    }

    public function newsletter_verify_email(Request $request){

        $subscriber = Subscriber::where(['email' => $request->email, 'verified_token' => $request->token])->first();
        if($subscriber){
            $subscriber->is_verified = 1;
            $subscriber->verified_token = null;
            $subscriber->save();

            $message = trans('translate.Newsletter varification successful');
            $notification = array('message'=> $message,'alert-type' => 'success');
            return redirect()->route('index')->with($notification);
        }else{
            $message = trans('translate.Something went wrong');
            $notification = array('message'=> $message,'alert-type' => 'error');
            return redirect()->route('index')->with($notification);
        }

    }

    public function contactMessage(Request $request){
        $rules = [
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'subject' => 'required',
            'message' => 'required'
        ];
        $customMessages = [
            'name.required' => trans('translate.Name is required'),
            'email.required' =>  trans('translate.Email is required'),
            'phone.required' => trans('translate.Phone is required'),
            'subject.required' => trans('translate.Subject is required'),
            'message.required' => trans('translate.Message is required')
        ];

        $this->validate($request, $rules,$customMessages);

        $msg = new ContactMessage();
        $msg->name = $request->name;
        $msg->email = $request->email;
        $msg->phone = $request->phone;
        $msg->subject = $request->subject;
        $msg->message = $request->message;
        $msg->save();

        $message = trans('translate.Message send successfully');
        $notification = array('message' => $message, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function ProductReview(Request $request){

        $validate = Validator::make($request->all(), [
            'product_id' => 'required',
            'review' => 'required',
            'rating' => 'required',
        ]);

        if (auth()->check()) {
            if ($validate->fails()) {
                $message = trans('translate.Please fill up the form');
                $notification = array('message' => $message, 'alert-type' => 'error');
                return redirect()->back()->with($notification);
            }

            $review = new Review();
            $review->product_id = $request->product_id;
            $review->user_id = Auth::user()->id;
            $review->review = $request->review;
            $review->rating = $request->rating;
            $review->status = 0;
            $review->save();

            $message = trans('translate.Review submited successful');
            $notification = array('message' => $message, 'alert-type' => 'success');
            return redirect()->back()->with($notification);
        } else {
            $message = trans('translate.Please login first');
            $notification = array('message' => $message, 'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }

    }


    public function blogComment(Request $request){

        $rules = [
            'blog_id' => 'required',
            'comment' => 'required',
        ];
        $customMessages = [
            'comment.required' => trans('translate.Comment is required'),
        ];

        $this->validate($request, $rules,$customMessages);

        if (auth()->check()) {

            $comment = new BlogComment();
            $comment->blog_id = $request->blog_id;
            $comment->user_id = Auth::user()->id;
            $comment->comment = $request->comment;
            $comment->status = 0;
            $comment->save();

            $message = trans('translate.Comment has been saved');
            $notification = array('message' => $message, 'alert-type' => 'success');
            return redirect()->back()->with($notification);
        } else {
            $message = trans('translate.Please login first');
            $notification = array('message' => $message, 'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }
    }


    public function tremsOfServices()
    {
        $data['trems_condation'] = "TermsAndCondition::with('termsandcondition_translate')->first()";
        return view('frontend.pages.terms_of_services',$data);
    }

    public function privacyPolicy()
    {
        $data['privecy'] = "TermsAndCondition::with('termsandcondition_translate')->first()";
        return view('frontend.pages.privacy_policy',$data);
    }
}
