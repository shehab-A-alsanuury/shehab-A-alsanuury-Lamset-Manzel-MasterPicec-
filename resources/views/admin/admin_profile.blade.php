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
										<h2 class="sherah-breadcrumb__title">Profile</h2>
										<ul class="sherah-breadcrumb__list">
											<li><a href="#">Home</a></li>
											<li class="active"><a href="">Profile</a></li>
										</ul>
									</div>
									<!-- End Sherah Breadcrumb -->
									<div class="sherah-personals">
										<div class="row">
											<div class="col-lg-3 col-md-2 col-12 sherah-personals__list mg-top-30">
												<div class="sherah-psidebar sherah-default-bg">
													<!-- Features Tab List -->
													<div class="list-group sherah-psidebar__list" id="list-tab" role="tablist">
														<a class="list-group-item active" data-bs-toggle="list" href="#id1" role="tab"><span class="sherah-psidebar__icon"><svg xmlns="http://www.w3.org/2000/svg" width="15.137" height="18.151" viewBox="0 0 15.137 18.151">
															<g id="Icon" transform="translate(-127.285 -217.094)">
															  <path id="Path_170" data-name="Path 170" d="M142.35,419.766a7.862,7.862,0,0,0-.848-2.97,3.353,3.353,0,0,0-2.566-1.817,1.5,1.5,0,0,0-1.176.242c-.2.152-.422.281-.637.415a4.018,4.018,0,0,1-4.074.264c-.428-.2-.8-.5-1.205-.738a1.126,1.126,0,0,0-.59-.214,3.558,3.558,0,0,0-1.664.413,3.71,3.71,0,0,0-1.65,1.987,9.533,9.533,0,0,0-.618,4.357,2.808,2.808,0,0,0,1.984,2.447c.232.072.471.12.707.18h9.607c.008-.027.03-.03.054-.032a2.906,2.906,0,0,0,2.747-2.994A11.6,11.6,0,0,0,142.35,419.766Zm-2.985,3.494c-1.506.018-3.012,0-4.518,0v0h-4.323a2.435,2.435,0,0,1-1.276-.3,1.763,1.763,0,0,1-.892-1.556,9.141,9.141,0,0,1,.523-3.565,3.452,3.452,0,0,1,.766-1.219,2.21,2.21,0,0,1,1.5-.617c.071,0,.12.044.175.077.425.253.818.557,1.269.768a5.066,5.066,0,0,0,5.088-.319c.246-.152.488-.31.73-.467a.357.357,0,0,1,.233-.053,2.3,2.3,0,0,1,1.95,1.33,6.775,6.775,0,0,1,.691,2.433,10.99,10.99,0,0,1,.074,1.45A1.888,1.888,0,0,1,139.365,423.26Z" transform="translate(0 -189.086)"/>
															  <path id="Path_171" data-name="Path 171" d="M201.205,217.094a4.372,4.372,0,1,0,4.358,4.377A4.363,4.363,0,0,0,201.205,217.094Zm0,7.68a3.308,3.308,0,1,1,3.3-3.314A3.3,3.3,0,0,1,201.2,224.775Z" transform="translate(-66.452 0)" />
															</g>
														  </svg>
															</span><span class="sherah-psidebar__title">Personal Info</span></a>


														<a class="list-group-item" data-bs-toggle="list" href="#id5" role="tab"><span class="sherah-psidebar__icon"><svg xmlns="http://www.w3.org/2000/svg" width="13.498" height="17.259" viewBox="0 0 13.498 17.259">
															<g id="Icon" transform="translate(660.4 -193.609)">
															  <path id="Path_184" data-name="Path 184" d="M-660.4,203.045a1.613,1.613,0,0,1,.523-.923,1.916,1.916,0,0,1,.388-.246.186.186,0,0,0,.127-.2c0-.8-.008-1.607,0-2.411a5.44,5.44,0,0,1,2.5-4.683,5.586,5.586,0,0,1,3.571-.959,5.609,5.609,0,0,1,3.648,1.591,5.179,5.179,0,0,1,1.621,3.125,16.885,16.885,0,0,1,.075,1.849.488.488,0,0,1-.5.495q-1.044.01-2.088,0a.5.5,0,0,1-.508-.511c-.006-.337,0-.674,0-1.011a2.567,2.567,0,0,0-2.756-2.516,2.562,2.562,0,0,0-2.443,2.363c-.035.9-.007,1.8-.007,2.724h7.7a1.513,1.513,0,0,1,1.477.863,1.669,1.669,0,0,1,.161.7c.012,2.006.01,4.012.005,6.018a1.515,1.515,0,0,1-1.333,1.538.193.193,0,0,0-.046.022h-10.734a.3.3,0,0,0-.063-.024,1.538,1.538,0,0,1-.973-.549,1.792,1.792,0,0,1-.345-.776Zm6.733,6.812h5.108c.426,0,.619-.19.619-.609q0-2.95,0-5.9c0-.416-.194-.6-.624-.6h-10.182c-.426,0-.619.19-.619.609q0,2.942,0,5.884c0,.439.188.621.641.621Zm4.687-10.191a5.512,5.512,0,0,0-.138-1.6,4.667,4.667,0,0,0-5.709-3.293,4.527,4.527,0,0,0-3.472,4.046c-.063.951-.022,1.909-.026,2.865,0,.014.013.029.018.04h1.014v-.19q0-1.146,0-2.293a3.686,3.686,0,0,1,.265-1.381,3.7,3.7,0,0,1,4.171-2.146,3.562,3.562,0,0,1,2.847,3.532c0,.139,0,.278,0,.423Z" transform="translate(0 0)" />
															  <path id="Path_185" data-name="Path 185" d="M-538.592,438.065c0-.243,0-.487,0-.73a.158.158,0,0,0-.109-.174,1.479,1.479,0,0,1-.883-1.448,1.5,1.5,0,0,1,1.146-1.363,1.508,1.508,0,0,1,1.734.918,1.481,1.481,0,0,1-.735,1.868.236.236,0,0,0-.163.257c.009.448,0,.9,0,1.345,0,.354-.193.582-.494.585s-.5-.228-.5-.593C-538.592,438.508-538.592,438.286-538.592,438.065Zm.5-2.76a.5.5,0,0,0-.5.5.5.5,0,0,0,.5.5.5.5,0,0,0,.5-.5A.5.5,0,0,0-538.094,435.3Z" transform="translate(-115.541 -230.447)" />
															</g>
														  </svg>
															</span><span class="sherah-psidebar__title">Change Password </span></a>
													</div>
												</div>
											</div>

											<div class="col-lg-9 col-md-10 col-12  sherah-personals__content mg-top-30">
												<div class="sherah-ptabs">

													<div class="sherah-ptabs__inner">
														<div class="tab-content" id="nav-tabContent">
															<!--  Features Single Tab -->
															<div class="tab-pane fade show active" id="id1" role="tabpanel">
																<form action="" method="POST" id="adminSocialLink">
																	<div class="row">
																		<div class="col-12">
																			<div class="sherah-ptabs__separate">
																				<div class="sherah-ptabs__form-main">
																					<div class="sherah__item-group sherah-default-bg sherah-border">
																						<!--Profile Cover Info -->
																						<div class="sherah-profile-cover sherah-offset-bg sherah-dflex">
																							<div class="sherah-profile-cover__img">
																								<img src="{{asset($admin->image)}}" alt="#">
																							</div>
																							<div class="sherah-profile-cover__content">
																								<h3 class="sherah-profile-cover__title">{{$admin->name}}</h3>
																								<span class="sherah-profile-cover__text sherah-color1">{{$admin->bio}}</span>

																							</div>
																							<div class="sherah-userprofile__right">
																							<a data-id="{{ $setting->id }}" data-bs-toggle="modal" data-bs-target="#ProfileEditTable" class="sherah-btn sherah-btn__white ProfileEdit"><svg class="sherah-color3__fill" xmlns="http://www.w3.org/2000/svg" width="18.29" height="18.252" viewBox="0 0 18.29 18.252">
																							<g id="Group_132" data-name="Group 132" transform="translate(-234.958 -37.876)">
																								<path id="Path_481" data-name="Path 481" d="M242.545,95.779h-5.319a2.219,2.219,0,0,1-2.262-2.252c-.009-1.809,0-3.617,0-5.426q0-2.552,0-5.1a2.3,2.3,0,0,1,2.419-2.419q2.909,0,5.818,0c.531,0,.87.274.9.715a.741.741,0,0,1-.693.8c-.3.026-.594.014-.892.014q-2.534,0-5.069,0c-.7,0-.964.266-.964.976q0,5.122,0,10.245c0,.687.266.955.946.955q5.158,0,10.316,0c.665,0,.926-.265.926-.934q0-2.909,0-5.818a.765.765,0,0,1,.791-.853.744.744,0,0,1,.724.808c.007,1.023,0,2.047,0,3.07s.012,2.023-.006,3.034A2.235,2.235,0,0,1,248.5,95.73a1.83,1.83,0,0,1-.458.048Q245.293,95.782,242.545,95.779Z" transform="translate(0 -39.652)" fill="#09ad95"/>
																								<path id="Path_482" data-name="Path 482" d="M332.715,72.644l2.678,2.677c-.05.054-.119.133-.194.207q-2.814,2.815-5.634,5.625a1.113,1.113,0,0,1-.512.284c-.788.177-1.582.331-2.376.48-.5.093-.664-.092-.564-.589.157-.781.306-1.563.473-2.341a.911.911,0,0,1,.209-.437q2.918-2.938,5.853-5.86A.334.334,0,0,1,332.715,72.644Z" transform="translate(-84.622 -32.286)" fill="#09ad95"/>
																								<path id="Path_483" data-name="Path 483" d="M433.709,42.165l-2.716-2.715a15.815,15.815,0,0,1,1.356-1.248,1.886,1.886,0,0,1,2.579,2.662A17.589,17.589,0,0,1,433.709,42.165Z" transform="translate(-182.038)" fill="#09ad95"/>
																							</g>
																								</svg>
																								Edit Profile</a>
																							</div>

																						</div>
																						<!-- End Profile Cover Info -->

																						<div class="sherah-profile-info__v2 mg-top-30">
																							<h3 class="sherah-profile-info__heading mg-btm-30">Personal Information</h3>
																							<ul class="sherah-profile-info__list sherah-dflex-column">
																								<li class="sherah-dflex">
																									<h4 class="sherah-profile-info__title">Full Name :</h4>
																									<p class="sherah-profile-info__text">{{$admin->name}}</p>
																								</li>
																								<li class="sherah-dflex">
																									<h4 class="sherah-profile-info__title">Email :</h4>
																									<p class="sherah-profile-info__text">{{$admin->email}}</p>
																								</li>
																								<li class="sherah-dflex">
																									<h4 class="sherah-profile-info__title">Joining Date :</h4>
																									<p class="sherah-profile-info__text">{{$admin->created_at->toDateString()}}</p>
																								</li>
																								<li class="sherah-dflex">
																									<h4 class="sherah-profile-info__title">Admin Type : </h4>
																									@if($admin->admin_type == 1)
																									<p class="sherah-profile-info__text">Super Admin</p>
																									@else
																									<p class="sherah-profile-info__text"> Admin</p>
																									@endif
																								</li>
																							</ul>
																						</div>


																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</form>
															</div>


															<div class="tab-pane fade" id="id5" role="tabpanel">
																<div class="sherah-paymentm sherah__item-group sherah-default-bg sherah-border ">
																	<h4 class="sherah__item-group sherah-default-bg sherah-border__title">Change Password</h4>
																	<div class="row">
																		<div class="col-xxl-8  col-lg-6 col-md-6 col-12">
																			<!-- Sign in Form -->
																			<form class="sherah-wc__form-main sherah-form-main--v2 p-0" action="{{route('admin.chnage.password')}}" method="post">
																				@csrf
																				<div class="form-group">
																					<label class="sherah-wc__form-label">Old Password *</label>
																					<div class="form-group__input">
																						<input class="sherah-wc__form-input" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;" id="password-field" type="password" name="old_password" placeholder="" maxlength="8" required="required">
																					</div>
																				</div>
																				<div class="form-group">
																					<label class="sherah-wc__form-label">New Password *</label>
																					<div class="form-group__input">
																						<input class="sherah-wc__form-input" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;" id="password-field" type="password" name="password" placeholder="" maxlength="8" required="required">
																					</div>
																				</div>
																				<div class="form-group">
																					<label class="sherah-wc__form-label">Re-enter Password *</label>
																					<div class="form-group__input">
																						<input class="sherah-wc__form-input" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;" id="password-field" type="password" name="password_confirmation" placeholder="" maxlength="8" required="required">
																					</div>
																				</div>
																				<div class="form-group mg-top-30">
																					<button type="submit" class="sherah-btn sherah-btn__primary">Changed Password</button>
																				</div>
																			</form>
																			<!-- End Sign in Form -->
																		</div>
																		<div class="col-xxl-4 col-lg-6 col-md-6 col-12">
																			<div class="sherah-password__img">
																				<img src="Admin/img/p-update-img.png" alt="">
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>

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
			</section>
			<!-- End sherah Dashboard -->

		</div>


<div class="modal fade bd-example-modal-lg" id="ProfileEditTable" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Profile</h5>
        <button type="button" class="btn btn-primary admin_update_close_btn" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="Variant">
      <form class="sherah-wc__form-main" action="{{route('admin.update.profile',$admin->id)}}" method="POST" enctype= "multipart/form-data" >
                @csrf
            <div class="variant">
                    <div class="row">
                        <div class="col-12">            <!-- Product Info -->
                            <div class="product-form-box">
                                <div class="row">
									<div class="col-12" id="variant_name">
                                        <div class="form-group">
                                            <label class="sherah-wc__form-label">Image *</label>
                                            <div class="form-group__input">
                                                <img class="admin_avatar" id="preview-img-profile" src="{{asset($admin->image)}}" alt="">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12" id="variant_name">
                                        <div class="form-group">
                                            <label class="sherah-wc__form-label">New Image *</label>
                                            <div class="form-group__input">
                                                <input onchange="previewThumnailImage(event)" type="file" name="image" id="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-12" id="item_name">
                                        <div class="form-group">
                                            <label class="sherah-wc__form-label">Name *</label>
                                            <div class="form-group__input">
                                                <input class="sherah-wc__form-input"  type="text" name="name" value="{{$admin->name}}" required>
                                            </div>
                                        </div>
                                    </div>
									<div class="col-lg-6 col-12" id="item_name">
                                        <div class="form-group">
                                            <label class="sherah-wc__form-label">Email *</label>
                                            <div class="form-group__input">
                                                <input class="sherah-wc__form-input"  type="text" name="email" value="{{$admin->email}}" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12" id="CreateItemButton">
                                        <div class="form-group">
                                        <button type="submit" class="sherah-btn sherah-btn__primary">Update</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- End Product Info -->
                    </div>
            </div>
        </div>
      </form>
    </div>
  </div>
</div>


@include('admin.base.footer')

<script>
    "use strict"

	function previewThumnailImage(event) {
        var reader = new FileReader();
        reader.onload = function(){
            var output = document.getElementById('preview-img-profile');
            output.src = reader.result;
        }
        reader.readAsDataURL(event.target.files[0]);
    };
</script>
