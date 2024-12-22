@php
$language = App\Models\Language::get();
$setting =  App\Models\Setting::first();
if (auth()->check()) {
    $user_id = auth()->user()->id;
    $totalWishlistItems = App\Models\Wishlist::where('user_id', $user_id)->count();
} else {
    $totalWishlistItems = 0;
}
$cart = session()->get('cart', []);
$totalPrice = 0;
@endphp
<style>
    .header .menu-bg .nav-btn-main .nav-btn-two .love:after {
       content: "{{ $totalWishlistItems }}";
   }
   .header .menu-bg .nav-btn-main .nav-btn-two .cart::after {
       content: "{{ session('cart') ? count(session('cart')) : 0 }}";
   }
</style>
    <!-- header part start  -->
    <header class="header  header-two  ">
        <div class="container">
            <div class="header-main">
                <div class="header-left-center">
                    <a href="{{route('menu')}}"></a>
                </div>
                <div class="header-right">
                    <div class="header-right-item">
                        <div class="header-right-inner">
                            <div class="icon">
                                <span>
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M15.75 14.25V13.0155C15.75 12.4022 15.3766 11.8506 14.8071 11.6228L13.2815 11.0126C12.5571 10.7229 11.7316 11.0367 11.3828 11.7345L11.25 12C11.25 12 9.375 11.625 7.875 10.125C6.375 8.625 6 6.75 6 6.75L6.26551 6.61724C6.96328 6.26836 7.27714 5.44285 6.98741 4.71852L6.37717 3.19291C6.14937 2.62343 5.59781 2.25 4.98445 2.25H3.75C2.92157 2.25 2.25 2.92157 2.25 3.75C2.25 10.3774 7.62258 15.75 14.25 15.75C15.0784 15.75 15.75 15.0784 15.75 14.25Z"
                                            stroke-width="1.5" stroke-linejoin="round" />
                                    </svg>
                                </span>
                            </div>
                            <div class="text">
                                <a href="tel:+962 7 8886 8393">+962 7 8886 8393</a>
                            </div>
                        </div>
                        <div class="header-right-inner">
                            <div class="icon">
                                <span>
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M1.66699 10V5.83333C1.66699 3.99238 3.15938 2.5 5.00033 2.5H15.0003C16.8413 2.5 18.3337 3.99238 18.3337 5.83333V14.1667C18.3337 16.0076 16.8413 17.5 15.0003 17.5H6.66699M5.00033 6.66667L8.15133 8.76733C9.27099 9.51378 10.7297 9.51378 11.8493 8.76733L15.0003 6.66667M1.66699 12.5H6.66699M1.66699 15H6.66699"
                                            stroke-width="1.5" stroke-linecap="round" />
                                    </svg>
                                </span>
                            </div>
                            <div class="text">
                                <a href="mailto:+962 7 8886 8393">+962 7 8886 8393</a>
                            </div>
                        </div>
                        <div class="location-btn">
                            <div class="dropdown">
                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                                    id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                    @if (Session::get('front_lang'))
                                        {{ Session::get('front_lang_name') }}
                                    @else
                                        {{ __('translate.Select Language') }}
                                    @endif
                                </a>

                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    @foreach ($language as $language)
                                        <li><a class="dropdown-item" href="{{ route('set.language', $language->lang_code) }}">{{$language->name}}</a></li>
                                    @endforeach
                                </ul>
                            </div>

                            <div class="location-btn-icon">
                                <span>
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path d="M5.83301 8.33203L9.99967 11.6654L14.1663 8.33203" stroke="white"
                                            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- menu part start -->
        <nav class="menu-bg ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="nav-main">
                            <div class="nav-main">
                                <div class="logo">
                                    <a href="{{route('index')}}"> <img src="{{asset($setting->stiky_logo)}}"
                                        alt="logo"></a>
                                </div>
                                <div class="menu">
                                    <ul>
                                        @if ($setting->theam == 0)
                                        <li><a href="{{ route('index') }}">{{ __('translate.Home') }}
                                            <span><i class="fa-solid fa-angle-down"></i></span>
                                                </a>
                                            <ul>
                                                <li>
                                                    <a href="{{route('change.fontend.theme',1)}}">{{ __('translate.Home') }}-01</a>
                                                </li>
                                                <li>
                                                    <a href="{{route('change.fontend.theme',2)}}">{{ __('translate.Home') }}-02</a>
                                                </li>
                                            </ul>
                                        </li>
                                        @else
                                            <li><a href="{{route('index')}}">{{ __('translate.Home') }}</a></li>
                                        @endif
                                        <li><a href="{{route('menu')}}">{{ __('translate.Menu') }}</a></li>
                                        <li><a href="{{route('about')}}">{{ __('translate.About Us') }}</a></li>
                                        <li><a href="{{route('contact')}}">{{ __('translate.Contact Us') }}</a></li>
                                        <li><a href="{{route('blog')}}">{{ __('translate.Blog') }}</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="nav-btn-main">
                                <form action="{{route('menu')}}" method="GET" >
                                    <div class="nav-btn-one">
                                        <input type="text" name="keyword" class="form-control" id="exampleFormControlInput1"
                                        placeholder="{{ __('translate.Search here') }}">
                                        <input type="hidden" name="category">
                                        <div class="nav-search">
                                            <button type="submit">
                                                <span>
                                                    <svg width="22" height="22" viewBox="0 0 22 22" fill="none"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                                            d="M19.25 10.5C19.25 15.3325 15.3325 19.25 10.5 19.25C5.66751 19.25 1.75 15.3325 1.75 10.5C1.75 5.66751 5.66751 1.75 10.5 1.75C15.3325 1.75 19.25 5.66751 19.25 10.5ZM10.5 20.75C16.1609 20.75 20.75 16.1609 20.75 10.5C20.75 4.83908 16.1609 0.25 10.5 0.25C4.83908 0.25 0.25 4.83908 0.25 10.5C0.25 16.1609 4.83908 20.75 10.5 20.75ZM19.5303 18.4697C19.2374 18.1768 18.7626 18.1768 18.4697 18.4697C18.1768 18.7626 18.1768 19.2374 18.4697 19.5303L20.4696 21.5303C20.7625 21.8232 21.2374 21.8232 21.5303 21.5303C21.8232 21.2374 21.8232 20.7625 21.5303 20.4696L19.5303 18.4697Z"
                                                            fill="#4D5461" />
                                                    </svg>
                                                </span>
                                            </button>
                                        </div>

                                    </div>
                                </form>
                                <div class="nav-btn-two">
                                    <a href="{{route('user.wishlist')}}">
                                        <div class="love">
                                            <span>
                                                <svg width="28" height="28" viewBox="0 0 28 28" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M19.833 7.584C21.1216 7.584 22.1663 8.62867 22.1663 9.91733M13.9997 6.65363L14.7989 5.834C17.285 3.2845 21.3157 3.2845 23.8018 5.834C26.2211 8.31503 26.2954 12.3134 23.9701 14.8872L17.2893 22.2819C15.5145 24.2463 12.4848 24.2463 10.71 22.2819L4.02926 14.8873C1.70392 12.3135 1.77826 8.31506 4.19757 5.83402C6.68365 3.28451 10.7144 3.28452 13.2005 5.83402L13.9997 6.65363Z"
                                                        stroke-width="1.5" stroke-linecap="round"
                                                        stroke-linejoin="round" />
                                                </svg>
                                            </span>
                                        </div>
                                    </a>


                                    <div class="love cart">
                                        <div class="click" data-name="cart-dropdown">

                                        </div>
                                        <span>
                                            <svg width="28" height="28" viewBox="0 0 28 28" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M6.99967 4.66536H20.9997C23.577 4.66536 25.6663 6.7547 25.6663 9.33203V15.1654C25.6663 17.7427 23.577 19.832 20.9997 19.832H11.6663C9.08901 19.832 6.99967 17.7427 6.99967 15.1654V4.66536ZM6.99967 4.66536C6.99967 3.3767 5.95501 2.33203 4.66634 2.33203H2.33301"
                                                    stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                <path
                                                    d="M12.833 23.918C12.833 24.8845 12.0495 25.668 11.083 25.668C10.1165 25.668 9.33301 24.8845 9.33301 23.918C9.33301 22.9515 10.1165 22.168 11.083 22.168C12.0495 22.168 12.833 22.9515 12.833 23.918Z"
                                                    stroke-width="1.5" />
                                                <path
                                                    d="M23.333 23.918C23.333 24.8845 22.5495 25.668 21.583 25.668C20.6165 25.668 19.833 24.8845 19.833 23.918C19.833 22.9515 20.6165 22.168 21.583 22.168C22.5495 22.168 23.333 22.9515 23.333 23.918Z"
                                                    stroke-width="1.5" />
                                                <path d="M16.333 9.33203L16.333 15.1654" stroke-width="1.5"
                                                    stroke-linecap="round" stroke-linejoin="round" />
                                                <path d="M19.2503 12.25L13.417 12.25" stroke-width="1.5"
                                                    stroke-linecap="round" stroke-linejoin="round" />
                                            </svg>
                                        </span>


                                        <div class="cart-dropdown header-dropdown" id="cart-dropdown">


                                            <div class="cart-dropdown-text">
                                                <div class="text">
                                                    <h3>{{ __('translate.My Cart') }}</h3>
                                                </div>

                                                <div class="cart-dropdown-btn">
                                                    <button type="button" class="close-btn" aria-label="Close">
                                                        <span>
                                                            <svg width="10" height="10" viewBox="0 0 10 10" fill="none"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path
                                                                    d="M9.24309 0.757865L0.757812 9.24315M9.24309 9.24309L0.757812 0.757812"
                                                                    stroke="#9EA3AE" stroke-width="1.5"
                                                                    stroke-linecap="round" stroke-linejoin="round" />
                                                            </svg>
                                                        </span>

                                                    </button>
                                                </div>
                                            </div>



                                            @foreach ($cart as $item)
                                                @php
                                                    $product = App\Models\Product::where('status', 'active')->whereIn('id', [$item['product_id']])->first();
                                                    $total = 0;
                                                    $calculate = 0;
                                                @endphp

                                                <div class="cart-dropdown-item-box">
                                                    <div class="cart-dropdown-item">
                                                        <div class="cart-dropdown-item-img">
                                                            <img src="{{asset($product['tumb_image'])}}" alt="img">
                                                        </div>
                                                        <div class="cart-dropdown-item-text">
                                                            <a href="{{route('menu-detils',$product->slug)}}">
                                                                <h3>{{$product->name}}</h3>
                                                            </a>
                                                            <p>{{ $setting->currency_icon }}{{$item['total']}}</p>
                                                        </div>
                                                    </div>

                                                    <div class="cart-dropdown-inner">
                                                        <div class="cart-dropdown-inner-btn">
                                                            <a href="{{route('cart.remove',$product['id'])}}">
                                                                <span>
                                                                    <svg width="18" height="18" viewBox="0 0 18 18"
                                                                        fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M3.75 6V13.5C3.75 15.1569 5.09315 16.5 6.75 16.5H11.25C12.9069 16.5 14.25 15.1569 14.25 13.5V6M10.5 8.25V12.75M7.5 8.25L7.5 12.75M12 3.75L10.9453 2.16795C10.6671 1.75065 10.1988 1.5 9.69722 1.5H8.30278C7.80125 1.5 7.3329 1.75065 7.0547 2.16795L6 3.75M12 3.75H6M12 3.75H15.75M6 3.75H2.25"
                                                                            stroke="#F01543" stroke-width="1.5"
                                                                            stroke-linecap="round"
                                                                            stroke-linejoin="round" />
                                                                    </svg>
                                                                </span>
                                                            </a>
                                                        </div>

                                                        @php
                                                            $totalPrice +=$item['total'];
                                                        @endphp



                                                    </div>
                                                </div>


                                            @endforeach

                                            @if(session()->has('cart') && count(session('cart')) != 0)
                                                <div class="cart-dropdown-sub-total">
                                                    <div class="cart-dropdown-sub-total-item">
                                                        <div class="text">
                                                            <h3>{{ __('translate.Sub Total') }}</h3>
                                                        </div>
                                                        <div class="text">
                                                            <h3><a href="javascript:;">{{ $setting->currency_icon }}{{ $totalPrice}}</a></h3>
                                                        </div>
                                                    </div>

                                                    <div class="cart-dropdown-sub-total-btn">
                                                        <a href="{{route('cartlist')}}" class="main-btn-four">{{ __('translate.Goto Cart') }}</a>
                                                    </div>

                                                </div>
                                            @else
                                            <div class="card-body">
                                                <h5 class="card-title">{{ __('translate.Empty Cart') }}</h5>
                                                <p class="card-text">{{ __('translate.Browse Product') }}</p>
                                                <a href="{{route('menu')}}" class="btn btn-primary">{{ __('translate.Shop Now') }}</a>
                                            </div>
                                            @endif



                                        </div>
                                    </div>





                                    <!-- login korar por aita show hobe  -->
                                    @if(Auth::user())
                                     <div class="love user">
                                        <div class="click" data-name="profile-dropdown">

                                        </div>
                                        <span>
                                            @if(Auth::user()->image)
                                                <img  src="{{asset(Auth::user()->image)}}" alt="img">
                                            @else
                                                <img src="{{asset($setting->empty_cart)}}" alt="img">
                                            @endif
                                        </span>


                                        <div class="profile-dropdown header-dropdown" id="profile-dropdown">
                                            <div class="profile-dropdown-img">
                                                @if(Auth::user()->image)
                                                    <img  src="{{asset(Auth::user()->image)}}" alt="img">
                                                @else
                                                    <img  src="{{asset($setting->empty_cart)}}" alt="img">
                                                @endif

                                            </div>

                                            <div class="profile-dropdown-text">
                                                <h4>{{Auth::user()->name}}</h4>
                                                <p>{{ __('translate.User Id') }} #{{Auth::user()->id}}</p>
                                            </div>



                                            <div class="profile-dropdown-menu">
                                                <ul>
                                                    <li>
                                                        <a href="{{route('user.dashboard')}}">
                                                            <span>
                                                                <svg width="24" height="24" viewBox="0 0 24 24"
                                                                    fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <ellipse cx="12" cy="17.5" rx="7" ry="3.5"
                                                                        stroke-width="1.5" stroke-linejoin="round" />
                                                                    <circle cx="12" cy="7" r="4" stroke-width="1.5"
                                                                        stroke-linejoin="round" />
                                                                </svg>
                                                            </span>
                                                            {{ __('translate.Dashboard') }}

                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="profile-dropdown-menu profile-dropdown-menu-two ">
                                                <ul>
                                                    <li>
                                                        <a href="{{route('logout')}}">
                                                            <span>
                                                                <svg width="24" height="24" viewBox="0 0 24 24"
                                                                    fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path
                                                                        d="M20 14L21.2929 12.7071C21.6834 12.3166 21.6834 11.6834 21.2929 11.2929L20 10"
                                                                        stroke-width="1.5" stroke-linecap="round"
                                                                        stroke-linejoin="round" />
                                                                    <path
                                                                        d="M21 12H13M6 20C3.79086 20 2 18.2091 2 16V8C2 5.79086 3.79086 4 6 4M6 20C8.20914 20 10 18.2091 10 16V8C10 5.79086 8.20914 4 6 4M6 20H14C16.2091 20 18 18.2091 18 16M6 4H14C16.2091 4 18 5.79086 18 8"
                                                                        stroke-width="1.5" stroke-linecap="round" />
                                                                </svg>
                                                            </span>

                                                            {{ __('translate.Logout') }}
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>

                                        </div>

                                    </div>
                                    @endif
                                </div>


                            </div>
                            @if(!Auth::user())
                                <div class="nav-login-btn-main">
                                    <a href="{{route('login')}}" class="main-btn-four custom-btn">{{ __('translate.Sign In') }}</a>
                                    <a href="{{route('register')}}" class="main-btn">{{ __('translate.Sign Up') }}</a>
                                </div>

                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <!-- mobile navigation start -->
    <header class="mobile-header">
        <div class="container-full">
            <div class="mobile-header__container">
                <div class="p-left">
                    <div class="logo">
                        <a href="{{route('index')}}">
                            <img src="{{asset($setting->stiky_logo)}}" alt="logo">
                        </a>
                    </div>
                </div>
                <div class="p-right">
                    <button id="nav-opn-btn">
                        <i class="fa-solid fa-bars"></i>
                    </button>
                </div>
            </div>
        </div>
    </header>
    <!-- offcanvas -->
    <aside id="offcanvas-nav">
        <nav class="m-nav">
            <button id="nav-cls-btn"><i class="fa-solid fa-xmark"></i></button>
            <div class="logo">
                <a href="{{route('index')}}">
                    <img src="{{asset($setting->stiky_logo)}}" alt="logo">
                </a>
            </div>
            <ul class="nav-links">
                <li><a href="{{route('index')}}">{{ __('translate.Home') }}</a></li>
                <li><a href="{{route('menu')}}">{{ __('translate.Menu') }}</a></li>
                <li><a href="{{route('about')}}">{{ __('translate.About Us') }}</a></li>
                <li><a href="{{route('contact')}}">{{ __('translate.Contact') }}</a></li>
                <li><a href="{{route('blog')}}">{{ __('translate.Blog') }}</a></li>
            </ul>

        </nav>
    </aside>
    <!-- header part end  -->
