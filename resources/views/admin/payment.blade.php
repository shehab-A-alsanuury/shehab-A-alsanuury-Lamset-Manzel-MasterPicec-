@include('admin.base.header')

<body id="sherah-dark-light">
    <div class="sherah-body-area">
        @include('admin.base.sidebar')
        @include('admin.base.navbar')
        <section class="sherah-adashboard sherah-show">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="sherah-body">
                            <!-- Dashboard Inner -->
                            <div class="sherah-dsinner">
                                <!-- Sherah Breadcrumb -->
                                <div class="sherah-breadcrumb mg-top-30">
                                    <h2 class="sherah-breadcrumb__title">Stripe Credential</h2>
                                    <ul class="sherah-breadcrumb__list">
                                        <li><a href="#">Home</a></li>
                                        <li class="active"><a href="">Payment Method</a></li>
                                    </ul>
                                </div>
                                <!-- End Sherah Breadcrumb -->
                                <div class="sherah-personals">
                                    <div class="row">
                                        <div class="col-12 sherah-personals__content mg-top-30">
                                            <div class="sherah-ptabs">
                                                <div class="sherah-ptabs__inner">
                                                    <!-- Stripe Credential -->
                                                    <div class="tab-content">
                                                        <div class="tab-pane fade show active">
                                                            <div class="sherah-accordion accordion accordion-flush sherah__item-group sherah-default-bg sherah-border">
                                                                <div class="sherah__item-group sherah-default-bg sherah-border mg-top-30">
                                                                    <h4 class="sherah-default-bg sherah-border__title">Stripe Credential</h4>
                                                                    <div class="sherah__item-form--group">
                                                                        <form class="sherah-wc__form-main p-0" action="{{route('admin.stripe.credential.update')}}" method="POST" enctype="multipart/form-data">
                                                                            @csrf
                                                                            <div class="row">
                                                                                <div class="col-12">
                                                                                    <div class="sherah__item-form--group mg-top-form-20">
                                                                                        <label>Status *</label>
                                                                                        @if($stripe_payment->status == 1)
                                                                                            <div class="sherah-ptabs__notify-switch sherah-ptabs__notify-switch--two">
                                                                                                <label class="sherah__item-switch">
                                                                                                    <input type="checkbox" name="status" checked value="1">
                                                                                                    <span class="sherah__item-switch--slide sherah__item-switch--round"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        @else
                                                                                            <div class="sherah-ptabs__notify-switch sherah-ptabs__notify-switch--two">
                                                                                                <label class="sherah__item-switch">
                                                                                                    <input type="checkbox" name="status" value="1">
                                                                                                    <span class="sherah__item-switch--slide sherah__item-switch--round"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        @endif
                                                                                    </div>
                                                                                </div>

                                                                                <div class="col-12">
                                                                                    <div class="sherah__item-form--group mg-top-form-20">
                                                                                        <label class="sherah-wc__form-label">Country Name *</label>
                                                                                        <input class="sherah-wc__form-input" type="text" value="{{$stripe_payment->country_code}}" name="country_name">
                                                                                    </div>
                                                                                </div>

                                                                                <div class="col-12">
                                                                                    <div class="sherah__item-form--group mg-top-form-20">
                                                                                        <label class="sherah-wc__form-label">Currency Name *</label>
                                                                                        <input class="sherah-wc__form-input" type="text" value="{{$stripe_payment->currency_code}}" name="currency_name">
                                                                                    </div>
                                                                                </div>

                                                                                <div class="col-12">
                                                                                    <div class="sherah__item-form--group mg-top-form-20">
                                                                                        <label class="sherah-wc__form-label">Currency Rate *</label>
                                                                                        <input class="sherah-wc__form-input" type="text" value="{{$stripe_payment->currency_rate}}" name="currency_rate">
                                                                                    </div>
                                                                                </div>

                                                                                <div class="col-12">
                                                                                    <div class="sherah__item-form--group mg-top-form-20">
                                                                                        <label class="sherah-wc__form-label">Stripe KEY *</label>
                                                                                        <input class="sherah-wc__form-input" type="text" value="{{$stripe_payment->stripe_key}}" name="stripe_key">
                                                                                    </div>
                                                                                </div>

                                                                                <div class="col-12">
                                                                                    <div class="sherah__item-form--group mg-top-form-20">
                                                                                        <label class="sherah-wc__form-label">Stripe SECRET *</label>
                                                                                        <input class="sherah-wc__form-input" type="text" value="{{$stripe_payment->stripe_secret}}" name="stripe_secret">
                                                                                    </div>
                                                                                </div>

                                                                                <div class="col-12">
                                                                                    <div class="form-group">
                                                                                        <label class="sherah-wc__form-label">Payment page image</label>
                                                                                        <div class="form-group__input">
                                                                                            <img id="empty-cart-preview-img" class="paypal_payment_image" src="{{asset($stripe_payment->image)}}" alt="">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>

                                                                                <div class="col-12">
                                                                                    <div class="form-group">
                                                                                        <label class="sherah-wc__form-label">New Image</label>
                                                                                        <div class="form-group__input">
                                                                                            <input name="stripe_image" type="file">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row mg-top-30">
                                                                                <div class="sherah__item-form--group">
                                                                                    <button type="submit" class="sherah-btn sherah-btn__primary">Update Now</button>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- End Stripe Credential -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Dashboard Inner -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

@include('admin.base.footer')
