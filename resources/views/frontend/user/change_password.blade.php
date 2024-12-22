@extends('frontend.layouts.master')
@section('title')
    <title>{{ __('translate.Change Password') }}</title>
@endsection

@section('content')
<main>

    <!-- banner  -->
    <div class="inner-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-banner-head">
                        <h1> {{ __('translate.Change Password') }}</h1>
                    </div>

                    <div class="inner-banner-item">
                        <div class="left">
                            <span>{{ __('translate.Dashboard') }}</span>
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
                            <span>{{ __('translate.Change Password') }}</span>
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
                        <p>{{ __('translate.Change Password') }}</p>
                    </div>
                    <div class="col-lg-12">
                        <div class="dashboard-edit-profile-from">
                            <form action="{{ route('user.update.password') }}" method="POST">
                                @csrf
                                <div class="shopping-cart-new-address-from">
                                    <div class="shopping-cart-new-address-from-item">
                                        <div class="shopping-cart-new-address-from-inner">
                                            <label for="currentPassword" class="form-label">{{ __('translate.Current Password') }}</label>
                                            <input type="password" class="form-control" id="currentPassword" name="old_password">
                                        </div>
                                    </div>
                                    <div class="shopping-cart-new-address-from-item">
                                        <div class="shopping-cart-new-address-from-inner">
                                            <label for="newPassword" class="form-label">{{ __('translate.New Password') }}</label>
                                            <input type="password" class="form-control" id="newPassword" name="password">
                                            <small id="passwordHelp" style="color: red; display: none;">
                                                Password must be at least 8 characters long, include an uppercase letter, a number, and a special character.
                                            </small>
                                        </div>
                                        <div class="shopping-cart-new-address-from-inner">
                                            <label for="confirmPassword" class="form-label">{{ __('translate.Confirm Password') }}</label>
                                            <input type="password" class="form-control" id="confirmPassword" name="password_confirmation">
                                            <small id="confirmPasswordHelp" style="color: red; display: none;">
                                                Passwords do not match.
                                            </small>
                                        </div>
                                    </div>

                                    <div class="change-passowerd-btn">
                                        <button type="submit" class="main-btn-four">{{ __('translate.Save Now') }}</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

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
    document.getElementById('newPassword').addEventListener('input', function () {
        const password = this.value;
        const passwordHelp = document.getElementById('passwordHelp');
        const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

        if (!passwordPattern.test(password)) {
            passwordHelp.style.display = 'block';
        } else {
            passwordHelp.style.display = 'none';
        }
    });

    document.getElementById('confirmPassword').addEventListener('input', function () {
        const confirmPassword = this.value;
        const newPassword = document.getElementById('newPassword').value;
        const confirmPasswordHelp = document.getElementById('confirmPasswordHelp');

        if (confirmPassword !== newPassword) {
            confirmPasswordHelp.style.display = 'block';
        } else {
            confirmPasswordHelp.style.display = 'none';
        }
    });
</script>

@endsection
