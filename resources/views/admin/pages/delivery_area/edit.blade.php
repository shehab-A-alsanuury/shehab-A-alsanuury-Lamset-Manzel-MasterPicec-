
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
												<h2 class="sherah-breadcrumb__title">Edit Delivery Area</h2>
												<ul class="sherah-breadcrumb__list">
													<li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
													<li class="active"><a href="">Edit Delivery Area</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="sherah-page-inner sherah-border sherah-basic-page sherah-default-bg mg-top-25 p-0">
                                        <form class="sherah-wc__form-main" action="{{route('admin.deliveryarea.update',$delivery_area->id)}}" method="POST" enctype= multipart/form-data >
                                            @csrf
                                            @method('PUT')
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="product-form-box sherah-border mg-top-30">
                                                        <h4 class="form-title m-0">Basic Information</h4>
                                                        <div class="row">

                                                            <div class="col-lg-12 col-md-12 col-12">
                                                                <div class="form-group">
                                                                    <label class="sherah-wc__form-label">Area Name *</label>
                                                                    <div class="form-group__input">
                                                                        <input class="sherah-wc__form-input" value="{{$delivery_area->area_name}}" type="text" id="area_name" name="area_name">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label class="sherah-wc__form-label">Minimum delivery time (Minutes) *</label>
                                                                    <div class="form-group__input">
                                                                        <input class="sherah-wc__form-input" value="{{$delivery_area->min_time}}" type="number" id="min_time" name="min_time">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label class="sherah-wc__form-label">Maximum delivery time (Minutes) *</label>
                                                                    <div class="form-group__input">
                                                                        <input class="sherah-wc__form-input" value="{{$delivery_area->max_time}}" type="number" id="max_time" name="max_time">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label class="sherah-wc__form-label">Delivery Fee *</label>
                                                                    <div class="form-group__input">
                                                                        <input class="sherah-wc__form-input"  value="{{$delivery_area->fee}}" type="number" name="fee" id="fee">
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-12 col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label class="sherah-wc__form-label">Status*</label>
                                                                    <select class="form-group__input" aria-label="Default select example" name="status">
                                                                        <option {{$delivery_area->status == '1' ? 'selected' :''}} value ="1">Active</option>
                                                                        <option {{$delivery_area->status == '0' ? 'selected' :''}} value="0">Inactive</option>
                                                                    </select>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <!-- End Product Info -->
                                                </div>
                                            </div>
                                            <div class=" mg-top-40 sherah-dflex sherah-dflex-gap-30 justify-content-end">
                                                <button type="submit" class="sherah-btn sherah-btn__primary">Update</button>
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

