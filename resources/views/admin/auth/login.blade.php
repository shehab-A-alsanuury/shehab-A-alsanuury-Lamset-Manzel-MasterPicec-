@extends('admin.auth.master_layout')
@section('master-layout')
<div class="col-lg-6 col-md-6 col-12 sherah-wc-col-two">
    <div class="sherah-wc__form">
        <div class="sherah-wc__form-inner">
            <h3 class="sherah-wc__form-title sherah-wc__form-title__one">
                {{ __('Login Your Account') }}
                <span>{{ __('Please enter your email and password to continue') }}</span>
            </h3>
            <!-- Sign in Form -->
            <form class="sherah-wc__form-main p-0" action="{{ route('admin.login') }}" method="post" novalidate>
                @csrf

                <!-- Email Address Field -->
                <div class="form-group">
                    <label class="sherah-wc__form-label">{{ __('Email Address') }}</label>
                    <div class="form-group__input">
                        <input 
                            class="sherah-wc__form-input @error('email') is-invalid @enderror" 
                            type="email" 
                            name="email" 
                            value="{{ old('email') }}" 
                            required 
                            placeholder="{{ __('Enter your email') }}">
                        
                        @error('email')
                            <div class="invalid-feedback text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <!-- Password Field -->
                <div class="form-group">
                    <label class="sherah-wc__form-label">{{ __('Password') }}</label>
                    <div class="form-group__input">
                        <input 
                            class="sherah-wc__form-input @error('password') is-invalid @enderror" 
                            id="password-field" 
                            type="password" 
                            name="password" 
                            maxlength="20" 
                            required 
                            placeholder="{{ __('Enter your password') }}">
                        
                        @error('password')
                            <div class="invalid-feedback text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <!-- Remember Me Checkbox -->
                <div class="form-group">
                    <div class="sherah-wc__check-inline">
                        <div class="sherah-wc__checkbox">
                            <input 
                                class="sherah-wc__form-check" 
                                id="checkbox" 
                                name="remember" 
                                type="checkbox">
                            <label for="checkbox">{{ __('Remember me') }}</label>
                        </div>
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="form-group form-mg-top25">
                    <div class="sherah-wc__button sherah-wc__button--bottom">
                        <button class="ntfmax-wc__btn" type="submit">{{ __('Login') }}</button>
                    </div>
                </div>
            </form>
            <!-- End Sign in Form -->
        </div>
    </div>
</div>
@endsection
