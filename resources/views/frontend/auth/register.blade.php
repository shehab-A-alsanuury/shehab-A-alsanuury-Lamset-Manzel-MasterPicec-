@extends('frontend.auth.user_layout')

@section('title')
    <title>{{ $setting->app_name }} - {{ __('translate.Register') }}</title>
@endsection

@section('user-layout')

    <div class="sign-up-text">
        <h2>{{ __('translate.Welcome back') }}</h2>
        <p>{{ __('translate.Welcome back! Please enter your details.') }}</p>
    </div>

    <div class="sign-up-from">
        <div class="sign-up-from-item">
            @if (Session::has('error'))
                <p class="text-danger">{{ Session::get('error') }}</p>
            @endif
            <form action="{{ route('register') }}" method="post" novalidate>
                @csrf
                <div class="sign-up-from-inner">
                    <label for="name" class="form-label">{{ __('translate.Name') }}</label>
                    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" id="name" required>
                    @error('name')
                        <p class="text-danger">{{ $message }}</p>
                    @enderror
                </div>

                <div class="sign-up-from-inner">
                    <label for="email" class="form-label">{{ __('translate.Email') }}</label>
                    <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" id="email" required>
                    @error('email')
                        <p class="text-danger">{{ $message }}</p>
                    @enderror
                </div>

                <div class="sign-up-from-inner">
                    <label for="password" class="form-label">{{ __('translate.Password') }}</label>
                    <div class="input-group">
                        <input type="password" class="form-control toggle-password @error('password') is-invalid @enderror" name="password" id="password" required>
                        <div class="icon" data-toggle="password" data-target="password">
                            <span class="toggle-password-icon">
                                <i class="fa-solid fa-eye-slash"></i>
                            </span>
                        </div>
                    </div>
                    <small class="text-muted">{{ __('translate.Password must be at least 8 characters, contain uppercase, lowercase, number, and special character.') }}</small>
                    @error('password')
                        <p class="text-danger">{{ $message }}</p>
                    @enderror
                </div>

                <div class="sign-up-from-inner">
                    <label for="password_confirmation" class="form-label">{{ __('translate.Confirm Password') }}</label>
                    <div class="input-group">
                        <input type="password" class="form-control @error('password_confirmation') is-invalid @enderror" name="password_confirmation" id="password_confirmation" required>
                        <div class="icon" data-toggle="password" data-target="password_confirmation">
                            <span class="toggle-password-icon">
                                <i class="fa-solid fa-eye-slash"></i>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="sign-up-btn">
                    <button class="main-btn-four" type="submit">{{ __('translate.Sign Up') }}</button>
                </div>
            </form>
            <p>{{ __('translate.Already have an account?') }} <a href="{{ route('login') }}">{{ __('translate.Sign in here') }}</a></p>
        </div>
    </div>

@endsection
