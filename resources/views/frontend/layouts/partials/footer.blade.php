
@php

$TawkChat =  App\Models\TawkChat::first();
$gallery = App\Models\Gallery::get();


@endphp
<section class="shopping-cart">
    <!-- modal  -->
    @php
        $products =  App\Models\Product::where('status', 'active')->get();
    @endphp
    @foreach ($products as $productmodel)
    <div class="modal fade" id="exampleModal{{ $productmodel['id'] }}" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
                <form action="{{route('cart.add.detils')}}" method="POST">
                    @csrf
                    <input type="hidden" value="{{$productmodel->id}}" name="product_id" required>
                    <div class="modal-body">
                        <div class="modal-body-text">
                            <h3> {{$productmodel->name}}</h3>
                        </div>


                        <div class="modal-body-item-box">
                            <div class="together-box-text">
                                <h5>{{ __('translate.Select Size') }}</h5>
                            </div>
                            @foreach(json_decode($productmodel->size, true) as $size => $price)
                                <div class="together-box-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="size" value="{{ $size }},{{ $price }}" id="size_{{ $loop->index }}" data-info="{{ $size }},{{ $price }}">
                                        <label class="form-check-label" for="size_{{ $loop->index }}">
                                            {{ $size }}
                                        </label>
                                    </div>
                                    <div class="form-check-btn">
                                        <div class="grid">
                                            {{$setting->currency_icon}}{{ $price }}
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            <div class="modal-body-item-box-text">
                                <h5>{{ __('translate.Select Addon (Optional)') }}</h5>
                            </div>

                                @foreach(json_decode($productmodel->items, true) as $id)
                                @php
                                $addons = App\Models\OptionalItem::where('id', $id)->get();
                                @endphp
                                    @foreach ($addons as $addon)
                                    <div class="together-box-item">
                                        <div class="form-check">

                                            <input class="form-check-input" type="checkbox" name="addons[]" value="{{ $addon->id }}" id="addon_{{ $loop->parent->index }}_{{ $loop->index }}"
                                                @if(isset($item['addons'][$addon->id])) checked @endif>
                                            <label class="form-check-label" for="flexCheckDefault">
                                                {{ $addon->name }}
                                            </label>
                                        </div>

                                        <div class="form-check-btn">
                                            <div class="form-check-btn">
                                                <div class="grid">{{$setting->currency_icon}}{{ $addon->price }}</div>
                                            </div>
                                        </div>

                                    </div>
                                    @endforeach
                                @endforeach

                            <div class="together-box-inner-btn-btm">
                                <button type="submit" class="main-btn-six" tabindex="-1">
                                    <span>
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M6 4H18C20.2091 4 22 5.79086 22 8V13C22 15.2091 20.2091 17 18 17H10C7.79086 17 6 15.2091 6 13V4ZM6 4C6 2.89543 5.10457 2 4 2H2"
                                                stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                            </path>
                                            <path
                                                d="M11 20.5C11 21.3284 10.3284 22 9.5 22C8.67157 22 8 21.3284 8 20.5C8 19.6716 8.67157 19 9.5 19C10.3284 19 11 19.6716 11 20.5Z"
                                                stroke-width="1.5"></path>
                                            <path
                                                d="M20 20.5C20 21.3284 19.3284 22 18.5 22C17.6716 22 17 21.3284 17 20.5C17 19.6716 17.6716 19 18.5 19C19.3284 19 20 19.6716 20 20.5Z"
                                                stroke-width="1.5"></path>
                                            <path d="M14 8L14 13" stroke-width="1.5" stroke-linecap="round"
                                                stroke-linejoin="round">
                                            </path>
                                            <path d="M16.5 10.5L11.5 10.5" stroke-width="1.5" stroke-linecap="round"
                                                stroke-linejoin="round">
                                            </path>
                                        </svg>
                                    </span>
                                    {{ __('translate.Add to Cart') }}
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    @endforeach
</section>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-12" data-aos="fade-right">
                <div class="footer-logo">
                    <div class="logo">
                        <img src="{{asset($setting->stiky_logo)}}" alt="logo">
                    </div>
                </div>

                <div class="footer-text">
                    <h4>At Lamset Manzel, we invite you to embark on a heartwarming journey of authentic Jordanian flavors. Our tables are more than just places to dine—they’re where cherished memories are made and traditions come to life.

                    </h4>
                </div>

                <div class="footer-icon">
                    <div class="icon">
                        <a href="https://www.facebook.com/" target="_blank"><i class="fa-brands fab fa-facebook-f"></i></a>
                        <a href="https://twitter.com/" target="_blank"><i class="fa-brands fab fa-twitter"></i></a>
                        <a href="https://linkedin.com/" target="_blank"><i class="fa-brands fab fa-linkedin"></i></a>
                </div>
                </div>
            </div>


            <div class="col-lg-8 mol-md-12 ">
                <div class="row">
                    <div class="col-lg-6 col-md-6" data-aos="fade-right" data-aos-delay="100">
                        <div class="quick-line-item">
                            <div class="quick-line-item-head">
                                <h3>Quick Link</h3>
                            </div>

                            <div class="quick-line-menu">
                                <ul>
                                    <li>
                                        <a href="/user/dashboard">My Profile</a>
                                    </li>

                                    <li>
                                        <a href="/about-us">About Us</a>
                                    </li>
                                    <li>

                                        <a href="/contact-us">Contact Us</a>
                                    </li>


                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6" data-aos="fade-right" data-aos-delay="200">
                        <div class="quick-line-item">
                            <div class="quick-line-item-head">
                                <h3>Terms &amp;amp; Privacy</h3>
                            </div>

                            <div class="quick-line-menu">
                                <ul>
                                    <li>

                                        <a href="/privacy-policy">Privacy &amp; Policy</a>
                                    </li>

                                    <li>

                                        <a href="/terms-of-service">Terms of Service</a>
                                    </li>




                                </ul>
                            </div>
                        </div>
                    </div>
                  
                </div>
            </div>


        </div>
    </div>
</footer>
    <!-- Footer part End  -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="copyright-text">
                        <h4>Copyright 2025, Lamset Manzel. All Rights Reserved.</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
@if($TawkChat->status == 1)
<script type="text/javascript">
    var checkDevice = window.matchMedia("(max-width: 575px)");
    if(checkDevice && !checkDevice.matches){
        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
        (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='{{$TawkChat->chat_link}}';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
        })();
    }

</script>
<!--End of Tawk.to Script-->
@endif







