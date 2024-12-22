@extends('frontend.layouts.master')

@section('title')
    <title>{{$setting->app_name}} - {{ __('translate.Terms and Conditions') }}</title>
@endsection

@section('content')
<main>

    <!-- banner  -->

    <div class="inner-banner">
        <div class="container">
            <div class="row  ">
                <div class="col-lg-12">
                    <div class="inner-banner-head">
                        <h1>{{ __('translate.Terms and Conditions') }}</h1>
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
                            <span>{{ __('translate.Terms and Conditions') }}</span>
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
            1. What Are Terms and Conditions? At Lamset Manzel, our Terms and Conditions outline the guidelines that ensure a seamless and enjoyable experience for all our guests. These rules define your rights and responsibilities when reserving a table, attending an event, or interacting with our services.

            By agreeing to our Terms and Conditions, you help us create a harmonious environment where everyone can enjoy the warmth of authentic Jordanian cuisine.
            
            2. Lamset Manzel Terms and Conditions Examples Adding clear Terms and Conditions benefits both our guests and our team by setting expectations and ensuring mutual understanding.
            
            Benefits of Terms and Conditions: They clarify the reservation process and cancellation policies. They outline the proper use of our services, including private events or special arrangements. They protect your interests and ours, ensuring a positive dining experience. By following these guidelines, Lamset Manzel maintains the high standards and unique ambiance that you love.
            
            3. Protect Your Experience At Lamset Manzel, your satisfaction is our top priority. We take measures to ensure that the quality of our food, service, and ambiance remains unparalleled.
            
            From preserving our authentic recipes to safeguarding the privacy of our guests, every detail is meticulously managed to protect the experience we offer.
            
            4. What to Include in Terms and Conditions for Dining Experiences For a smooth and enjoyable dining experience, our Terms and Conditions include:
            
            Reservation Guidelines: Details on how to book a table, confirm reservations, and manage cancellations. Dining Etiquette: Expectations regarding conduct, dress code, and respect for other diners. Event Policies: Rules for hosting private events or celebrations at Lamset Manzel. Refund and Payment Terms: Clear information about deposits and payments for events or catering services. These guidelines are in place to ensure that every visit to Lamset Manzel is stress-free and memorable.
            
            5. Pricing and Payment Terms We pride ourselves on transparency and simplicity in our pricing. At Lamset Manzel, we ensure that all costs are clearly communicated, with no hidden fees.
            
            Our payment policies include:
            
            Reservations for private events may require an advance deposit. Multiple payment options, including cash and card, are available for your convenience. Detailed invoices are provided for catering or large group bookings. These terms allow us to deliver the exceptional quality and service you deserve.
            
            Lamset Manzel: Where authentic flavors meet the comfort of home.
        </div>
    </section>

</main>

@endsection
