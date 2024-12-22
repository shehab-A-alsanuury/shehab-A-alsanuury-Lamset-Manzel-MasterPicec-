@extends('frontend.layouts.master')
@section('title')
    <title>{{ __('translate.Edit Profile') }}</title>
@endsection

@section('content')
<main>

    <!-- banner  -->
    <div class="inner-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-banner-head">
                        <h1>{{ __('translate.Dashboard') }}</h1>
                    </div>

                    <div class="inner-banner-item">
                        <div class="left">
                            <span>{{ __('translate.User') }}</span>
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
                            <span>{{ __('translate.Edit Profile') }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- banner  -->

    <!-- dashboard  start -->
    <section class="dashboard">
        <div class="container">
            <div class="row">
                @include('frontend.user.sideber')

                <div class="col-lg-9 col-md-8">
                    <div class="dashboard-item-taitel">
                        <h4>{{ __('translate.Dashboard') }}</h4>
                        <p>{{ __('translate.Edit Profile') }}</p>
                    </div>
                    <form action="{{ route('user.update.profile', $user->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="dashboard-edit-profile-from">
                            <div class="shopping-cart-new-address-from">
                                <div class="shopping-cart-new-address-from-item">
                                    <div class="shopping-cart-new-address-from-inner">
                                        <label class="form-label">{{ __('translate.New Avatar') }}</label>
                                        <input type="file" name="image" id="default" class="border p-2">
                                    </div>
                                </div>
                                <div class="shopping-cart-new-address-from-item">
                                    <div class="shopping-cart-new-address-from-inner">
                                        <label class="form-label">{{ __('translate.Name') }}</label>
                                        <input type="text" name="name" value="{{ html_decode($user->name) }}" class="form-control" id="name">
                                    </div>
                                </div>
                                <div class="shopping-cart-new-address-from-item">
                                    <div class="shopping-cart-new-address-from-inner">
                                        <label class="form-label">{{ __('translate.Email') }}</label>
                                        <input type="email" name="email" value="{{ html_decode($user->email) }}" class="form-control" id="email">
                                        <small id="emailError" style="color: red; display: none;">Please enter a valid email address.</small>
                                    </div>
                                    <div class="shopping-cart-new-address-from-inner">
                                        <label class="form-label">{{ __('translate.Phone') }}</label>
                                        <input type="text" name="phone" value="{{ html_decode($user->phone) }}" class="form-control" id="phone">
                                        <small id="phoneError" style="color: red; display: none;">Phone number must be 10 digits.</small>
                                    </div>
                                </div>

                                <div class="shopping-cart-new-address-from-item">
                                    <div class="shopping-cart-new-address-from-inner">
                                        <label class="form-label">{{ __('translate.Address') }}</label>
                                        <textarea name="address" class="form-control" id="address" cols="30" rows="10">{{ html_decode($user->address) }}</textarea>
                                    </div>
                                </div>

                                <div class="change-passowerd-btn">
                                    <button class="main-btn-four" type="submit">{{ __('translate.Save Now') }}</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- dashboard end -->

    <!-- Restaurant part-start -->
    @include('frontend.user.app')
    <!-- Restaurant part-end -->

</main>

<script>
    document.getElementById('email').addEventListener('input', function () {
        const email = this.value;
        const emailError = document.getElementById('emailError');
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!emailPattern.test(email)) {
            emailError.style.display = 'block';
        } else {
            emailError.style.display = 'none';
        }
    });

    document.getElementById('phone').addEventListener('input', function () {
        const phone = this.value;
        const phoneError = document.getElementById('phoneError');
        const phonePattern = /^\d{10}$/;

        if (!phonePattern.test(phone)) {
            phoneError.style.display = 'block';
        } else {
            phoneError.style.display = 'none';
        }
    });
</script>

@endsection
