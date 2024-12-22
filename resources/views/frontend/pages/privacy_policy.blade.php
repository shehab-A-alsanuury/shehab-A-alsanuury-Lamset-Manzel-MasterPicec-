@extends('frontend.layouts.master')

@section('title')
    <title>{{$setting->app_name}} - {{ __('translate.Privacy Policy') }}</title>
@endsection

@section('content')
<main>

    <!-- banner  -->

    <div class="inner-banner">
        <div class="container">
            <div class="row  ">
                <div class="col-lg-12">
                    <div class="inner-banner-head">
                        <h1>{{ __('translate.Privacy Policy') }}</h1>
                    </div>

                    <div class="inner-banner-item">
                        <div class="left">
                            <a href="{{route('index')}}">{{ __('translate.Home') }}</a>
                        </div>
                        <div class="icon">
                            <span>
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path d="M10 7L14 12L10 17" stroke="#E5E6EB" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                            </span>
                        </div>
                        <div class="left">
                            <span>{{ __('translate.Privacy Policy') }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- banner  -->

    <!-- Shopping Cart  start -->
    <section class="shopping-cart-two shopping-cart-address all-details-root ">
        <div class="container">
            Privacy Policy

At Lamset Manzel, we value your privacy and are committed to protecting your personal information. This privacy policy outlines how we collect, use, and safeguard your data when you interact with our website and services.

1. Information We Collect We may collect the following types of information when you use our services:

Personal Identification Information: Name, email address, phone number, and delivery address. Payment Information: Credit/debit card details or other payment-related information when processing payments. Usage Data: Information about how you interact with our website and services, including IP addresses, device information, and browser type. 2. How We Use Your Information We use the collected information for the following purposes:

To process orders and provide services such as delivery and pickup. To improve and personalize your user experience on our platform. To send promotional materials and updates, with your consent. To respond to customer service inquiries and provide support. To analyze and monitor the performance of our website and services. 3. Data Protection and Security We implement reasonable security measures to protect your personal data from unauthorized access, use, or disclosure. However, please note that no method of internet transmission is completely secure, and we cannot guarantee absolute security.

4. Sharing Your Information We do not sell, rent, or trade your personal information to third parties. However, we may share your information with trusted partners and service providers who assist in operating our website, processing payments, and delivering services, under strict confidentiality agreements.

5. Cookies and Tracking Technologies We may use cookies and similar tracking technologies to enhance your browsing experience and personalize content. You can modify your browser settings to refuse cookies or alert you when cookies are being sent. However, some features of the website may not function properly if cookies are disabled.

6. Your Rights You have the right to:

Access and update your personal information. Request the deletion of your personal data. Opt-out of promotional communications. Request that we limit the use of your data.
        </div>
    </section>

</main>

@endsection
