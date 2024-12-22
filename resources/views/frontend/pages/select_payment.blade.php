@extends('frontend.layouts.master')

@section('title')
<meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{$setting->app_name}} - {{ __('translate.Payment') }}</title>
@endsection

@section('content')
<main>

    <!-- banner  -->

    <div class="inner-banner">
        <div class="container">
            <div class="row  ">
                <div class="col-lg-12">
                    <div class="inner-banner-head">
                        <h1>{{ __('translate.Payment') }}</h1>
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
                            <span>{{ __('translate.Payment') }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- banner  -->


<!-- Shopping Cart start -->
<section class="shopping-cart-two shopping-cart-address">
    <div class="container">
        <form action="{{route('checkout.order')}}" method="POST">
            @csrf
            <div class="row">
                <div class="col-lg-7">
                    <div class="row shopping-payment-top">
                        @if ($stripe->status)
                            <div class="col-lg-12 text-center">
                                <div class="shopping-payment-btn">
                                    <a href="javascript:;" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <img src="{{ asset($stripe->image) }}" alt="img">
                                    </a>
                                    <div class="btn-two">
                                        <span>
                                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M10.9998 21.9997C17.0749 21.9997 21.9997 17.0749 21.9997 10.9998C21.9997 4.9248 17.0749 0 10.9998 0C4.9248 0 0 4.9248 0 10.9998C0 17.0749 4.9248 21.9997 10.9998 21.9997Z"
                                                    fill="#F01543"/>
                                                <path
                                                    d="M10.1649 14.0454C9.87404 14.05 9.59324 13.9393 9.38386 13.7374L6.8759 11.2735C6.66731 11.0678 6.54897 10.7877 6.5469 10.4948C6.54484 10.2018 6.65923 9.92008 6.8649 9.71149C7.07057 9.5029 7.35068 9.38455 7.64361 9.38249C7.93654 9.38043 8.21829 9.49481 8.42688 9.70049L10.1649 11.4055L14.6748 7.00552C14.7781 6.90368 14.9004 6.82319 15.0348 6.76862C15.1692 6.71406 15.313 6.68651 15.4581 6.68753C15.6031 6.68855 15.7465 6.71813 15.8801 6.77458C16.0137 6.83103 16.1349 6.91324 16.2368 7.01652C16.3386 7.11981 16.4191 7.24214 16.4737 7.37653C16.5282 7.51092 16.5558 7.65475 16.5548 7.79979C16.5537 7.94483 16.5242 8.08826 16.4677 8.22187C16.4113 8.35548 16.3291 8.47666 16.2258 8.5785L10.9348 13.7814C10.7214 13.9646 10.4458 14.0591 10.1649 14.0454Z"
                                                    fill="#EDEBEA"/>
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>

                <div class="col-lg-5">
                    <div class="cart-summary-box">
                        <div class="cart-summary-box-text">
                            <h3>{{ __('translate.Cart Summary') }}</h3>
                        </div>

                     
                        <div class="apply-coupon">
                            <div class="apply-coupon-taitel">
                                <h4>{{ __('translate.Apply Coupon') }}</h4>
                            </div>
                            <form id="applyCouponForm">
                                @csrf
                                <div class="apply-coupon-btn">
                                    <div class="apply-coupon-form">
                                        <input type="text" class="form-control" name="coupon" id="couponCode" placeholder="{{ __('translate.Type coupon') }}">
                                    </div>
                                    <div class="apply-coupon-btn-two">
                                        <button type="button" id="applyCouponBtn" class="coupon-btn">{{ __('translate.Apply') }}</button>
                                    </div>
                                </div>
                            </form>
                            <div class="apply-coupon-box">
                                <div class="shopping-cart-list">
                                    <div class="shopping-cart-list-text">
                                        <h4>{{ __('translate.Sub Total') }}</h4>
                                        <a href="javascript:;" id="subtotal">{{ $cart_data->total }}</a>
                                    </div>
                                    <div class="shopping-cart-list-text">
                                        <h4>{{ __('translate.Discount') }}</h4>
                                        <a href="javascript:;" id="discount">-{{ $cart_data->discount_amount }}</a>
                                    </div>
                                    <div class="shopping-cart-list-text">
                                        <h4>{{ __('translate.Delivery Charge') }}</h4>
                                        <a href="javascript:;" id="deliveryCharge">+{{ $cart_data->delevery_charge }}</a>
                                    </div>
                                    <div class="shopping-cart-list-text">
                                        <h4>{{ __('translate.Vat') }}</h4>
                                        <a href="javascript:;" id="vatCharge">+{{ $cart_data->vat_charge }}</a>
                                    </div>
                                </div>
                                <div class="shopping-cart-list shopping-cart-list-btm">
                                    <div class="shopping-cart-list-text">
                                        <h4>{{ __('translate.Grand Total') }}</h4>
                                        <a href="javascript:;" id="grandTotal">{{ $cart_data->grand_total }}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
<!-- Shopping Cart end -->

    @if ($stripe->status )
    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">{{ __('translate.Payment with stripe') }}</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            <div class="payment-popup__top payment-popup__top--digital">
            <div class="payment-popup">
                <div class="payment-popup__inner">
                    <div class="payment-popup__header">
                        <h4 class="payment-popup__heading">{{ __('translate.Total') }} : {{$order_total}}<b></b></h4>
                    </div>
                    <!-- Sign in Form -->

                        <form role="form" action="{{ route('pay-with-stripe') }}" method="POST" class="require-validation ecom-wc__form-main p-0" data-cc-on-file="false" data-stripe-publishable-key="{{ $stripe->stripe_key }}" id="payment-form">
                            @csrf
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group homec-form-input">
                                        <input class="ecom-wc__form-input card-number" type="text" name="card_number" placeholder="{{ __('translate.Card Number') }}" autocomplete="off">
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group homec-form-input">
                                        <input class="ecom-wc__form-input card-expiry-month" type="text" name="month" placeholder="{{ __('translate.Month') }}" autocomplete="off">
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group homec-form-input">
                                        <input class="ecom-wc__form-input card-expiry-year" type="text" name="year" placeholder="{{ __('translate.Year') }}" autocomplete="off">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group homec-form-input">
                                        <input class="ecom-wc__form-input card-cvc" type="text" name="cvc" placeholder="{{ __('translate.CVV') }}">
                                    </div>
                                </div>
                                <div class="col-12 mg-top-20 pb-3">
                                    <button type="submit" class="homec-btn homec-btn__second  homec-btn--payment"><span>{{ __('translate.Payment Now') }}</span></button>
                                </div>
                                <br>
                                <div class="col-12 error alert alert-danger d-none">
                                    <div class="payment-popup__error">{{ __('translate.Please provide your valid card information') }}</div>
                                </div>

                            </div>
                    </form>
                </div>
            </div>
        </div>
            </div>

        </div>
        </div>
    </div>
    @endif

    <!-- Modal -->
    <div class="modal fade" id="bankPayment" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">{{ __('translate.Payment with bank') }}</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            <div class="payment-popup">
       
            <div class="payment-popup__inner">
                <div class="payment-popup__header">
                    <h4 class="payment-popup__heading">{{ __('translate.Total') }} : {{$order_total}}<b></b></h4>
                </div>
                <ul class="payment-popup__bank-list">

                </ul>
                <!-- Sign in Form -->
                <form class="ecom-wc__form-main p-0"  method="post" action="{{ route('bank-payment') }}">
                    @csrf
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group homec-form-input">
                                <textarea rows="4" class="ecom-wc__form-input" type="text" name="tnx_info" placeholder="{{ __('translate.Transaction information') }}"></textarea>
                            </div>

                        </div>
                        <div class="col-12 mg-top-20">
                            <button type="submit" class=" btn--payment"><span>{{ __('translate.Submit Now') }}</span></button>
                        </div>
                    </div>
                </form>
                <!-- End Sign in Form -->
            </div>
        </div>
        <!-- End Payment Popup -->
            </div>

        </div>
        </div>
    </div>



</main>


{{-- start stripe payment --}}
    <script type="text/javascript" src="https://js.stripe.com/v2/"></script>

    <script>
        "use strict"
        $(function() {
            var $form = $(".require-validation");
            $('form.require-validation').bind('submit', (e)=>{
                var $form         = $(".require-validation"),
                inputSelector = ['input[type=email]', 'input[type=password]',
                                    'input[type=text]', 'input[type=file]',
                                    'textarea'].join(', '),
                $inputs       = $form.find('.required').find(inputSelector),
                $errorMessage = $form.find('div.error'),
                valid         = true;
                $errorMessage.addClass('d-none');

                $('.has-error').removeClass('has-error');
                $inputs.each(function(i, el) {
                    var $input = $(el);
                    if ($input.val() === '') {
                        $input.parent().addClass('has-error');
                        $errorMessage.removeClass('d-none');
                        e.preventDefault();
                    }
                });

                if (!$form.data('cc-on-file')) {
                e.preventDefault();
                Stripe.setPublishableKey($form.data('stripe-publishable-key'));
                Stripe.createToken({
                    number: $('.card-number').val(),
                    cvc: $('.card-cvc').val(),
                    exp_month: $('.card-expiry-month').val(),
                    exp_year: $('.card-expiry-year').val()
                }, stripeResponseHandler);
                }

            });

            function stripeResponseHandler(status, response) {
                if (response.error) {
                    $('.error')
                        .removeClass('d-none')
                        .find('.alert')
                        .text(response.error.message);
                } else {
                    var token = response['id'];
                    $form.find('input[type=text]').empty();
                    $form.append("<input type='hidden' name='stripeToken' value='" + token + "'/>");
                    $form.get(0).submit();
                }
            }

            $("#razorpayBtn").on("click", function(){

                $("#myForm").submit();
            });

            $("#molliBtn").on("click", function(){

                $("#molliform").submit();
            });
            /*====================================
                Payment Button
            ======================================*/

            // Add event listener to the bank button
            $('.payment-stripe-button').on( "click", ()=>{
                $('.payment-popup__top--digital').toggleClass('active');
            });

            // Add event listener to the body
            $('body').on("click", (e)=>{
                // Check if the clicked element is not the payment button or any of its children
                if (!$(e.target).is('.payment-popup') && !$(e.target).is('.payment-stripe-button') && !$.contains($('.payment-stripe-button')[0], e.target)) {
                    // If not, remove the 'active' class from the payment popup
                    $('.payment-popup__top--digital').removeClass('active');
                }
            });


            // Add event listener to the modal body
            $('.payment-popup__top--digital').on("click", (e)=>{
                // Stop the event from propagating up to the body element
                e.stopPropagation();
            });

            // Add event listener to the bank button
            $('.payment-bank-button').on("click", (e)=>{

            });

            // Add event listener to the body
            $('body').on("click", (e)=>{
                // Check if the clicked element is not the bank button or any of its children
                if (!$(e.target).is('.payment-bank-button') && !$.contains($('.payment-bank-button')[0], e.target)) {
                    // If not, remove the 'active' class from the bank popup
                    $('.payment-popup__top--bank').removeClass('active');
                }
            });


            // Add event listener to the modal body
            $('.payment-popup__top--bank').on("click", (e)=>{
                // Stop the event from propagating up to the body element
                e.stopPropagation();
            });


        });
    </script>
    {{-- end stripe payment --}}

    <script>
$(document).ready(function () {
    $('#applyCouponBtn').on('click', function (e) {
        e.preventDefault();

        let couponCode = $('#couponCode').val();
        let csrfToken = $('meta[name="csrf-token"]').attr('content');

        if (!couponCode) {
            alert('Please enter a coupon code');
            return;
        }

        $.ajax({
            url: '{{ route('apply.coupon') }}',
            method: 'POST',
            data: {
                _token: csrfToken,
                coupon: couponCode,
            },
            success: function (response) {
                if (response.success) {
                    alert(response.message);

                    // Fallback for null values and proper formatting
                    let subtotal = response.subtotal !== null ? parseFloat(response.subtotal).toFixed(2) : '0.00';
                    let discount = response.discount !== null ? parseFloat(response.discount).toFixed(2) : '0.00';
                    let deliveryCharge = response.delivery_charge !== null ? parseFloat(response.delivery_charge).toFixed(2) : '0.00';
                    let vatCharge = response.vat_charge !== null ? parseFloat(response.vat_charge).toFixed(2) : '0.00';
                    let grandTotal = response.grand_total !== null ? parseFloat(response.grand_total).toFixed(2) : '0.00';

                    // Update cart summary
                    $('#subtotal').text(subtotal);
                    $('#discount').text('-'  + discount);
                    $('#deliveryCharge').text('+' + deliveryCharge);
                    $('#vatCharge').text('+'  + vatCharge);
                    $('#grandTotal').text( grandTotal);
                } else {
                    alert(response.message);
                }
            },
            error: function (xhr, status, error) {
                console.error(xhr.responseText);
                alert('An error occurred. Please try again.');
            },
        });
    });
});



    </script>
    


{{-- end paystack --}}

@endsection
