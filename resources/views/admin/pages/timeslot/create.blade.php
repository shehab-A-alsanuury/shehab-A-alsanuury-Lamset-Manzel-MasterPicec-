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
									<div class="row">
										<div class="col-12">
											<div class="sherah-breadcrumb mg-top-30">
												<h2 class="sherah-breadcrumb__title">Create Time Slot</h2>
												<ul class="sherah-breadcrumb__list">
													<li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
													<li class="active"><a href="">Create Time Slot</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="sherah-page-inner sherah-border sherah-basic-page sherah-default-bg mg-top-25 p-0">
                                        <form class="sherah-wc__form-main" action="{{route('admin.timeslot.store')}}" method="POST" enctype= multipart/form-data >
                                        @csrf
                                            <div class="row">
                                                <div class="col-12">
                                                    <!-- Product Info -->
                                                    <div class="product-form-box sherah-border mg-top-30">
                                                        <h4 class="form-title m-0">Basic Information</h4>
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12 col-12">
                                                                <div class="form-group">
                                                                    <label class="sherah-wc__form-label">Slot Name *</label>
                                                                    <div class="form-group__input">
                                                                        <input class="sherah-wc__form-input" value="{{old('slot')}}" placeholder="Type here" type="text" id="slot" name="slot">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- End Product Info -->
                                                </div>
                                            </div>
                                            <div class=" mg-top-40 sherah-dflex sherah-dflex-gap-30 justify-content-end">
                                                <button type="submit" class="sherah-btn sherah-btn__primary">Submit</button>
                                            </div>
                                        </form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End sherah Dashboard -->
		</div>
@include('admin.base.footer')
