@extends('frontend.layouts.master')
@section('title')
<title>menu</title>
@endsection

@section('meta')
<meta name="title" content="menu">
<meta name="description" content="menu">
<meta name="keywords" content="menu">
@endsection

@section('content')

<main>
    <!-- banner  -->
    <div class="inner-banner">
        <div class="container">
            <div class="row  ">
                <div class="col-lg-12">
                    <div class="inner-banner-head">
                        <h1>{{ __('translate.Our Menu') }}</h1>
                    </div>

                    <div class="inner-banner-item">
                        <div class="left">
                            <a href="{{route('index')}}">{{ __('translate.Home') }}</a>
                        </div>
                        <div class="icon">
                            <span>
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path d="M10 7L14 12L10 17" stroke="#E5E6EB" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                </svg>
                            </span>
                        </div>
                        <div class="left">
                            <span>{{ __('translate.Our Menu') }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- banner  -->

    <!-- Food Details part start  -->


    <section class="food-details   ">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="food-details-btn-box">
                        <div class="food-details-btn-box-item">
                            <form action="{{route('menu')}}" method="GET" class="food-details-btn-box-item">
                                <select class="form-select" name="category" aria-label="Default select example">
                                    <option >{{ __('translate.Select Category') }}</option>
                                    @foreach ($Allcategories as $category)
                                    <option {{ request()->get('category') == $category->slug ? 'selected' : '' }} value="{{$category->slug}}">{{$category->name}}</option>
                                    @endforeach

                                </select>
                                <div class="food-details-btn-search-box">
                                    <input value="{{ request()->get('keyword') }}" type="text" name="keyword" class="form-control" id="exampleFormControlInput7"
                                        placeholder="{{ __('translate.Type your keyword') }}">
                                    <div class="food-details-btn-search-btn">
                                        <button type="submit" class="icon"> <span>
                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M18.5 18.5L22 22M21 11.5C21 6.25329 16.7467 2 11.5 2C6.25329 2 2 6.25329 2 11.5C2 16.7467 6.25329 21 11.5 21C16.7467 21 21 16.7467 21 11.5Z"
                                                        stroke="white" stroke-width="1.5" stroke-linecap="round"
                                                        stroke-linejoin="round" />
                                                </svg>
                                            </span>
                                        </button>
                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="food-details-btn-box-right-btn">
                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
                                        aria-selected="true">
                                        <span>
                                            <svg width="25" height="24" viewBox="0 0 25 24" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M8.34857 0H2.96329C1.32953 0 0 1.32953 0 2.96329V8.34791C0 9.98167 1.32953 11.3112 2.96329 11.3112H8.34791C9.98167 11.3112 11.3112 9.98167 11.3112 8.34791V2.96329C11.3119 1.32953 9.98233 0 8.34857 0ZM9.33633 8.34857C9.33633 8.89316 8.89316 9.33633 8.34857 9.33633H2.96329C2.4187 9.33633 1.97553 8.89316 1.97553 8.34857V2.96395C1.97553 2.41936 2.4187 1.97618 2.96329 1.97618H8.34791C8.8925 1.97618 9.33567 2.41936 9.33567 2.96395L9.33633 8.34857ZM21.6715 0H16.2862C14.6525 0 13.3229 1.32953 13.3229 2.96329V8.34791C13.3229 9.98167 14.6525 11.3112 16.2862 11.3112H21.6715C23.3053 11.3112 24.6348 9.98167 24.6348 8.34791V2.96329C24.6348 1.32953 23.3059 0 21.6715 0ZM22.6593 8.34857C22.6593 8.89316 22.2161 9.33633 21.6715 9.33633H16.2862C15.7416 9.33633 15.2985 8.89316 15.2985 8.34857V2.96395C15.2985 2.41936 15.7416 1.97618 16.2862 1.97618H21.6715C22.2161 1.97618 22.6593 2.41936 22.6593 2.96395V8.34857ZM8.34857 12.6888H2.96329C1.32953 12.6888 0 14.0183 0 15.6521V21.0367C0 22.6705 1.32953 24 2.96329 24H8.34791C9.98167 24 11.3112 22.6705 11.3112 21.0367V15.6521C11.3119 14.0177 9.98233 12.6888 8.34857 12.6888ZM9.33633 21.0367C9.33633 21.5813 8.89316 22.0245 8.34857 22.0245H2.96329C2.4187 22.0245 1.97553 21.5813 1.97553 21.0367V15.6521C1.97553 15.1075 2.4187 14.6643 2.96329 14.6643H8.34791C8.8925 14.6643 9.33567 15.1075 9.33567 15.6521L9.33633 21.0367ZM21.6715 12.6888H16.2862C14.6525 12.6888 13.3229 14.0183 13.3229 15.6521V21.0367C13.3229 22.6705 14.6525 24 16.2862 24H20.3097C20.855 24 21.2975 23.5575 21.2975 23.0122C21.2975 22.467 20.855 22.0245 20.3097 22.0245H16.2862C15.7416 22.0245 15.2985 21.5813 15.2985 21.0367V15.6521C15.2985 15.1075 15.7416 14.6643 16.2862 14.6643H21.6715C22.2161 14.6643 22.6593 15.1075 22.6593 15.6521V20.1655C22.6593 20.7108 23.1018 21.1533 23.647 21.1533C24.1923 21.1533 24.6348 20.7108 24.6348 20.1655V15.6521C24.6348 14.0177 23.3059 12.6888 21.6715 12.6888Z" />
                                            </svg>
                                        </span></button>
                                </li>

                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-contact" type="button" role="tab"
                                        aria-controls="pills-contact" aria-selected="false"><span>
                                            <i class="fa-solid fa-bars"></i>
                                        </span></button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12">
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                            aria-labelledby="pills-home-tab">

                            <div class="row g-4">
                                @forelse ($products as $product)
                                    <div class=" col-xxl-3 col-xl-4  col-lg-4 col-md-6 featured-item-mt " data-aos="fade-up">
                                        <div class="featured-item">
                                            @if ($product->is_populer == 1)
                                            <div class="featured-item-img-populer">

                                            </div>
                                            @endif
                                            <div class="featured-item-img">
                                                <img src="{{asset($product['tumb_image'])}}" class="w-100"
                                                    alt="featured-thumb">

                                                <div class="featured-item-img-overlay">
                                                    <div class="featured-item-img-over-text">
                                                        <div class="left-text">
                                                            <a href="{{route('wishlist.add',$product->id)}}">
                                                                <div class="icon">
                                                                    <span>
                                                                        <svg width="24" height="24" viewBox="0 0 24 24"
                                                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <path
                                                                                d="M4.31804 6.31804C3.90017 6.7359 3.5687 7.23198 3.34255 7.77795C3.1164 8.32392 3 8.90909 3 9.50004C3 10.091 3.1164 10.6762 3.34255 11.2221C3.5687 11.7681 3.90017 12.2642 4.31804 12.682L12 20.364L19.682 12.682C20.526 11.8381 21.0001 10.6935 21.0001 9.50004C21.0001 8.30656 20.526 7.16196 19.682 6.31804C18.8381 5.47412 17.6935 5.00001 16.5 5.00001C15.3066 5.00001 14.162 5.47412 13.318 6.31804L12 7.63604L10.682 6.31804C10.2642 5.90017 9.7681 5.5687 9.22213 5.34255C8.67616 5.1164 8.09099 5 7.50004 5C6.90909 5 6.32392 5.1164 5.77795 5.34255C5.23198 5.5687 4.7359 5.90017 4.31804 6.31804V6.31804Z"
                                                                                stroke="#F01543" stroke-width="2"
                                                                                stroke-linecap="round"
                                                                                stroke-linejoin="round" />
                                                                        </svg>
                                                                    </span>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        @php
                                                        $discount = $product->price - $product->offer_price;
                                                        $discountPercentage = ($discount / $product->price) * 100;
                                                        @endphp
                                                        @if ($discountPercentage != 100.00)
                                                        <div class="right-text">
                                                            <h5>{{ number_format($discountPercentage, 2) }}% Off </h5>
                                                        </div>
                                                        @endif

                                                    </div>
                                                </div>

                                            </div>

                                            <div class="featured-item-text">
                                                <div class="text-item">
                                                    <div class="left">
                                                        <h3>{{$setting->currency_icon}}{{$product->price}}</h3>
                                                    </div>
                                                </div>

                                                <div class="text-item-center">
                                                    <h3><a title="{{$product->name}}" class="line-clamp-1"
                                                            href="{{route('menu-detils',$product->slug)}}">{{$product->name}}</a>
                                                    </h3>
                                                </div>

                                                <div class="text-item-center-item-box">
                                                    @foreach(json_decode($product->specifaction, true) as $name)
                                                    <div class="text-item-center-item">
                                                        <div class="icon">
                                                            <span>
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                    xmlns="http://www.w3.org/2000/svg">
                                                                    <path
                                                                        d="M8 12L10.5347 14.2812C10.9662 14.6696 11.6366 14.6101 11.993 14.1519L16 9M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z"
                                                                        stroke="#FE724C" stroke-width="1.5"
                                                                        stroke-linecap="round" stroke-linejoin="round" />
                                                                </svg>
                                                            </span>
                                                        </div>

                                                        <div class="text">
                                                            <h5>{{$name}}</h5>
                                                        </div>
                                                    </div>
                                                    @endforeach

                                                    <div class="featured-item-btn">
                                                        <button type="button" data-bs-toggle="modal"
                                                            data-bs-target="#exampleModal{{ $product['id'] }}" class="main-btn-three">
                                                            <span>
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                    xmlns="http://www.w3.org/2000/svg">
                                                                    <path
                                                                        d="M6 4H18C20.2091 4 22 5.79086 22 8V13C22 15.2091 20.2091 17 18 17H10C7.79086 17 6 15.2091 6 13V4ZM6 4C6 2.89543 5.10457 2 4 2H2"
                                                                        stroke-width="1.5" stroke-linecap="round"
                                                                        stroke-linejoin="round" />
                                                                    <path
                                                                        d="M11 20.5C11 21.3284 10.3284 22 9.5 22C8.67157 22 8 21.3284 8 20.5C8 19.6716 8.67157 19 9.5 19C10.3284 19 11 19.6716 11 20.5Z"
                                                                        stroke-width="1.5" />
                                                                    <path
                                                                        d="M20 20.5C20 21.3284 19.3284 22 18.5 22C17.6716 22 17 21.3284 17 20.5C17 19.6716 17.6716 19 18.5 19C19.3284 19 20 19.6716 20 20.5Z"
                                                                        stroke-width="1.5" />
                                                                    <path d="M14 8L14 13" stroke-width="1.5"
                                                                        stroke-linecap="round" stroke-linejoin="round" />
                                                                    <path d="M16.5 10.5L11.5 10.5" stroke-width="1.5"
                                                                        stroke-linecap="round" stroke-linejoin="round" />
                                                                </svg>
                                                            </span>
                                                            {{ __('translate.Add to Cart') }}
                                                        </button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                @empty
                                    <div class="col-12 blog-mt-25px text-center cart_empty_area" data-aos="fade-up">
                                        <img class="sorry-img" src="{{ asset($setting->empty_result) }}">
                                        <h3 class="sorry-text">{{ __('translate.Sorry!! Product not found.') }}</h3>
                                        <p class="mb-4">{{ __('translate.Whoops... this information is not available for a moment') }}</p>
                                        <a class="main-btn-four" href="{{ route('menu') }}"><span>{{ __('translate.Back to Menu') }}</span></a>
                                    </div>
                                @endforelse

                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-contact" role="tabpanel"
                            aria-labelledby="pills-contact-tab">
<div class="popular">
    <div class="row gap-30">
                                @forelse ($products as $product2)
                                    <div class="col-lg-6 col-xl-6 col-xxl-4">
                                        <div class="popular-item-box row-card">
                                            <div class="popular-item-box-img">
                                                <img src="{{asset($product2['tumb_image'])}}" alt="thumb">

                                            </div>

                                            <div class="popular-inner-box">
                                                <div class="popular-item-box-text">
                                                    <a href="{{route('menu-detils',$product2->slug)}}">
                                                        <h3 class="line-clamp-1">{{$product2->name}}</h3>
                                                    </a>
                                                </div>
                                                @foreach(json_decode($product2->specifaction, true) as $name)
                                                <div class="popular-inner-item">
                                                    <div class="icon">
                                                        <span><svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <g clip-path="url(#clip0_304_21999)">
                                                                    <path
                                                                        d="M6.66699 10.0013L8.77923 11.9023C9.13881 12.2259 9.69748 12.1764 9.99449 11.7945L13.3337 7.5013M10.0003 18.3346C14.6027 18.3346 18.3337 14.6037 18.3337 10.0013C18.3337 5.39893 14.6027 1.66797 10.0003 1.66797C5.39795 1.66797 1.66699 5.39893 1.66699 10.0013C1.66699 14.6037 5.39795 18.3346 10.0003 18.3346Z"
                                                                        stroke="#FE724C" stroke-width="1.5"
                                                                        stroke-linecap="round" stroke-linejoin="round" />
                                                                </g>
                                                            </svg></span>
                                                    </div>

                                                    <div class="text">
                                                        <h5>{{$name}}</h5>
                                                    </div>
                                                </div>
                                                @endforeach

                                                <div class="popular-inner-item-btm">
                                                    <div class="text">
                                                        <h3>{{$setting->currency_icon}}{{$product2->price}}</h3>
                                                    </div>

                                                    <div class="popular-inner-item-btn">
                                                        <a type="button" data-bs-toggle="modal"
                                                            data-bs-target="#exampleModal{{ $product['id'] }}" class="main-btn-five">
                                                            <span>
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                    xmlns="http://www.w3.org/2000/svg">
                                                                    <path
                                                                        d="M6 4H18C20.2091 4 22 5.79086 22 8V13C22 15.2091 20.2091 17 18 17H10C7.79086 17 6 15.2091 6 13V4ZM6 4C6 2.89543 5.10457 2 4 2H2"
                                                                        stroke-width="1.5" stroke-linecap="round"
                                                                        stroke-linejoin="round"></path>
                                                                    <path
                                                                        d="M11 20.5C11 21.3284 10.3284 22 9.5 22C8.67157 22 8 21.3284 8 20.5C8 19.6716 8.67157 19 9.5 19C10.3284 19 11 19.6716 11 20.5Z"
                                                                        stroke-width="1.5"></path>
                                                                    <path
                                                                        d="M20 20.5C20 21.3284 19.3284 22 18.5 22C17.6716 22 17 21.3284 17 20.5C17 19.6716 17.6716 19 18.5 19C19.3284 19 20 19.6716 20 20.5Z"
                                                                        stroke-width="1.5"></path>
                                                                    <path d="M14 8L14 13" stroke-width="1.5"
                                                                        stroke-linecap="round" stroke-linejoin="round">
                                                                    </path>
                                                                    <path d="M16.5 10.5L11.5 10.5" stroke-width="1.5"
                                                                        stroke-linecap="round" stroke-linejoin="round">
                                                                    </path>
                                                                </svg>
                                                            </span>

                                                            {{ __('translate.add') }}
                                                        </a>
                                                    </div>
                                                </div>

                                            </div>


                                        </div>
                                    </div>
                                @empty
                                    <div class="col-12 blog-mt-25px text-center" data-aos="fade-up">
                                        <img class="sorry-img" src="{{ asset($setting->empty_result) }}">
                                        <h3 class="sorry-text">{{ __('translate.Sorry!! Product not found.') }}</h3>
                                        <p class="mb-4">{{ __('translate.Whoops... this information is not available for a moment') }}</p>
                                        <a href="{{ route('menu') }}"><span>{{ __('translate.Back to Menu') }}</span></a>
                                    </div>
                                @endforelse
                            </div>
</div>


                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Food Details part end  -->

    {{-- <!-- faq part-star -->
    <section class="faq s-padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12" data-aos="fade-left">
                    <div class="faq-head">
                        <h2>{{$faqAbout->titel}}</h2>
                    </div>

                    <div class="faq-main">
                        <div class="accordion" id="accordionExample">
                            @foreach ($faqs as $index => $item)
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="heading{{ $index + 1 }}">
                                    <button class="accordion-button {{ $index === 0 ? '' : 'collapsed' }}" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#collapse{{ $index + 1}}"
                                        aria-expanded="{{ $index === 0 ? 'true' : 'false' }}"
                                        aria-controls="collapse{{ $index + 1 }}">
                                        {{ $item->question }}
                                    </button>
                                </h2>
                                <div id="collapse{{ $index + 1 }}"
                                    class="accordion-collapse {{ $index === 0 ? 'show' : 'collapse' }}"
                                    aria-labelledby="heading{{ $index + 1 }}" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        {!! clean($item->answer) !!}
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 ">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="faq-img  ">
                                <img src="{{asset($faqAbout->image1)}}" class="w-100" alt="thumb">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="faq-img">
                                <div class="faq-img-two">
                                    <img src="{{asset($faqAbout->image3)}}" alt="thumb">
                                    <div class="faq-img-overlay">
                                        <div class="faq-img-overlay-text">
                                            <h2>
                                                <span>
                                                    <svg width="24" height="32" viewBox="0 0 24 32" fill="none"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M12 26.1844C10.3275 26.1844 8.9625 27.4919 8.9625 29.0922C8.9625 30.6926 10.3275 32 12 32C13.6725 32 15.0375 30.6926 15.0375 29.0922C15.0375 27.499 13.6725 26.1844 12 26.1844ZM3.0375 0C1.365 0 0 1.30743 0 2.90779C0 4.50815 1.365 5.81558 3.0375 5.81558C4.71 5.81558 6.075 4.50815 6.075 2.90779C6.075 1.30743 4.71 0 3.0375 0ZM3.0375 8.73052C1.365 8.73052 0 10.038 0 11.6383C0 13.2387 1.365 14.5461 3.0375 14.5461C4.71 14.5461 6.075 13.2387 6.075 11.6383C6.075 10.038 4.71 8.73052 3.0375 8.73052ZM3.0375 17.461C1.365 17.461 0 18.7685 0 20.3688C0 21.9692 1.365 23.2766 3.0375 23.2766C4.71 23.2766 6.075 21.9692 6.075 20.3688C6.075 18.7685 4.71 17.461 3.0375 17.461ZM20.9625 5.82273C22.635 5.82273 24 4.51529 24 2.91494C24 1.31458 22.635 0 20.9625 0C19.29 0 17.925 1.30743 17.925 2.90779C17.925 4.50815 19.29 5.82273 20.9625 5.82273ZM12 17.461C10.3275 17.461 8.9625 18.7685 8.9625 20.3688C8.9625 21.9692 10.3275 23.2766 12 23.2766C13.6725 23.2766 15.0375 21.9692 15.0375 20.3688C15.0375 18.7685 13.6725 17.461 12 17.461ZM20.9625 17.461C19.29 17.461 17.925 18.7685 17.925 20.3688C17.925 21.9692 19.29 23.2766 20.9625 23.2766C22.635 23.2766 24 21.9692 24 20.3688C24 18.7685 22.635 17.461 20.9625 17.461ZM20.9625 8.73052C19.29 8.73052 17.925 10.038 17.925 11.6383C17.925 13.2387 19.29 14.5461 20.9625 14.5461C22.635 14.5461 24 13.2387 24 11.6383C24 10.038 22.635 8.73052 20.9625 8.73052ZM12 8.73052C10.3275 8.73052 8.9625 10.038 8.9625 11.6383C8.9625 13.2387 10.3275 14.5461 12 14.5461C13.6725 14.5461 15.0375 13.2387 15.0375 11.6383C15.0375 10.038 13.6725 8.73052 12 8.73052ZM12 0C10.3275 0 8.9625 1.30743 8.9625 2.90779C8.9625 4.50815 10.3275 5.81558 12 5.81558C13.6725 5.81558 15.0375 4.50815 15.0375 2.90779C15.0375 1.30743 13.6725 0 12 0Z"
                                                            fill="white" />
                                                    </svg>
                                                </span>
                                                {{$faqAbout->first_description}}
                                            </h2>

                                            <h4>{{ __('translate.Success') }}
                                                <br> {{ __('translate.Event') }}
                                            </h4>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="faq-img img-mt">
                                <div class="faq-img-two">
                                    <img src="{{asset($faqAbout->image4)}}" alt="thumb">
                                    <div class="faq-img-overlay faq-img-overlay-two ">
                                        <div class="faq-img-overlay-text">
                                            <h2>
                                                <span>
                                                    <svg width="24" height="32" viewBox="0 0 24 32" fill="none"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M12 26.1844C10.3275 26.1844 8.9625 27.4919 8.9625 29.0922C8.9625 30.6926 10.3275 32 12 32C13.6725 32 15.0375 30.6926 15.0375 29.0922C15.0375 27.499 13.6725 26.1844 12 26.1844ZM3.0375 0C1.365 0 0 1.30743 0 2.90779C0 4.50815 1.365 5.81558 3.0375 5.81558C4.71 5.81558 6.075 4.50815 6.075 2.90779C6.075 1.30743 4.71 0 3.0375 0ZM3.0375 8.73052C1.365 8.73052 0 10.038 0 11.6383C0 13.2387 1.365 14.5461 3.0375 14.5461C4.71 14.5461 6.075 13.2387 6.075 11.6383C6.075 10.038 4.71 8.73052 3.0375 8.73052ZM3.0375 17.461C1.365 17.461 0 18.7685 0 20.3688C0 21.9692 1.365 23.2766 3.0375 23.2766C4.71 23.2766 6.075 21.9692 6.075 20.3688C6.075 18.7685 4.71 17.461 3.0375 17.461ZM20.9625 5.82273C22.635 5.82273 24 4.51529 24 2.91494C24 1.31458 22.635 0 20.9625 0C19.29 0 17.925 1.30743 17.925 2.90779C17.925 4.50815 19.29 5.82273 20.9625 5.82273ZM12 17.461C10.3275 17.461 8.9625 18.7685 8.9625 20.3688C8.9625 21.9692 10.3275 23.2766 12 23.2766C13.6725 23.2766 15.0375 21.9692 15.0375 20.3688C15.0375 18.7685 13.6725 17.461 12 17.461ZM20.9625 17.461C19.29 17.461 17.925 18.7685 17.925 20.3688C17.925 21.9692 19.29 23.2766 20.9625 23.2766C22.635 23.2766 24 21.9692 24 20.3688C24 18.7685 22.635 17.461 20.9625 17.461ZM20.9625 8.73052C19.29 8.73052 17.925 10.038 17.925 11.6383C17.925 13.2387 19.29 14.5461 20.9625 14.5461C22.635 14.5461 24 13.2387 24 11.6383C24 10.038 22.635 8.73052 20.9625 8.73052ZM12 8.73052C10.3275 8.73052 8.9625 10.038 8.9625 11.6383C8.9625 13.2387 10.3275 14.5461 12 14.5461C13.6725 14.5461 15.0375 13.2387 15.0375 11.6383C15.0375 10.038 13.6725 8.73052 12 8.73052ZM12 0C10.3275 0 8.9625 1.30743 8.9625 2.90779C8.9625 4.50815 10.3275 5.81558 12 5.81558C13.6725 5.81558 15.0375 4.50815 15.0375 2.90779C15.0375 1.30743 13.6725 0 12 0Z"
                                                            fill="white" />
                                                    </svg>
                                                </span>
                                                {{$faqAbout->secend_description}}
                                            </h2>

                                            <h4>{{ __('translate.Success') }}
                                                <br> {{ __('translate.Event') }}
                                            </h4>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="faq-img  ">

                                <div class="img-animetion">
                                    <img src="{{asset($faqAbout->image2)}}" alt="thumb">
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section> --}}
    <!-- faq part-end -->
    <!-- Restaurant part-start -->

    <!-- Restaurant part-end -->

</main>

@endsection
