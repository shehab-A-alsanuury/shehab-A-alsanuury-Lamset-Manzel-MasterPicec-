		<!-- Sherah Scripts -->


		<script src="{{asset('backend/js/jquery-migrate.js')}}"></script>
		<script src="{{asset('backend/js/jquery-ui.min.js')}}"></script>
		<script src="{{asset('backend/js/popper.min.js')}}"></script>
		<script src="{{asset('backend/js/bootstrap.min.js')}}"></script>
		<script src="{{asset('backend/js/charts.js')}}"></script>
		<script src="{{asset('backend/js/datatables.min.js')}}"></script>
		<script src="{{asset('backend/js/circle-progress.min.js')}}"></script>
		<script src="{{asset('backend/js/jquery-jvectormap.js')}}"></script>
		<script src="{{asset('backend/js/jvector-map.js')}}"></script>
		<script src="{{asset('backend/js/slickslider.min.js')}}"></script>
		<script src="{{asset('backend/js/main.js')}}"></script>

		<!--====== Toaster CDN ======-->
        <script src="{{asset('cdn/toster.main.js')}}"></script>
		<script src="{{asset('backend/js/bootstrapicon-iconpicker.js')}}"></script>
		<script src="{{asset('cdn/select2.main.js') }}"></script>

        <script src="{{ asset('tinymce/js/tinymce/tinymce.min.js') }}"></script>

		<style >
			.btn-success {
				color: #fff;
				margin-left: 20px;
				background-color: #198754;
				border-color: #198754;
			}
		</style>

		@if(Session::has('message'))
				<script >
					toastr.options = {
						"progressBar" : true,
						"closeButton" : true,
						}
						var type="{{Session::get('alert-type','info')}}"
						switch(type){
							case 'info':
								toastr.info("{{ Session::get('message') }}");
								break;
							case 'success':
								toastr.success("{{ Session::get('message') }}");
								break;
							case 'warning':
								toastr.warning("{{ Session::get('message') }}");
								break;
							case 'error':
								toastr.error("{{ Session::get('message') }}");
								break;
						}
			</script>
		@endif

		@if($errors->any())
			@foreach($errors->all() as $error)
				<script >
					toastr.error("{{ $error }}");
				</script>
			@endforeach
		@endif

	<script >
        "use strict"
		 $(document).ready(function() {
			$('.select2').select2();

            tinymce.init({
                selector: '.summernote',
                plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
                toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
                tinycomments_mode: 'embedded',
                tinycomments_author: 'Author name',
                mergetags_list: [
                    { value: 'First.Name', title: 'First Name' },
                    { value: 'Email', title: 'Email' },
                ]
            });

		});

		function message()
		{
			Swal.fire({
			position: 'bottom-end',
			icon: 'success',
			title: 'Status Changed Successfully!',
			showConfirmButton: false,
			timer: 500
			})
		}

		function confirmation(ev) {
			ev.preventDefault();
			var urlToRedirect = ev.currentTarget.getAttribute('href');
			const swalWithBootstrapButtons = Swal.mixin({
				customClass: {
					confirmButton: 'btn btn-success',
					cancelButton: 'btn btn-danger',
				},
				buttonsStyling: false
				})
				swalWithBootstrapButtons.fire({
				title: 'Are you sure?',
				text: "You won't be able to revert this!",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonText: 'Yes, delete it!',
				cancelButtonText: 'No, cancel!',
				reverseButtons: true
				}).then((result) => {
				if (result.isConfirmed) {
					swalWithBootstrapButtons.fire(
					'Deleted!',
					'Your file has been deleted.',
					'success'
					)
					window.location.href = urlToRedirect;
				} else if (
					result.dismiss === Swal.DismissReason.cancel
				) {
					swalWithBootstrapButtons.fire(
					'Cancelled',
					'Your imaginary file is safe :)',
					'error'
					)
				}
				})
		}
	</script>

    <script >
    "use strict"
        // initialize the icon picker and done
        $('.iconpicker').iconpicker({
            title: 'Pick an Icon',
            selected: false,
            defaultValue: false,
            placement: "bottom",
            collision: "none",
            animation: true,
            hideOnSelect: true,
            showFooter: true,
            searchInFooter: false,
            mustAccept: false,
            selectedCustomClass: "bg-primary",
            fullClassFormatter: function (e) {
                return e;
            },
            input: "input,.iconpicker-input",
            inputSearch: false,
            container: false,
            component: ".input-group-addon,.iconpicker-component",
            templates: {
                popover: '<div class="iconpicker-popover popover" role="tooltip"><div class="arrow"></div>' + '<div class="popover-title"></div><div class="popover-content"></div></div>',
                footer: '<div class="popover-footer"></div>',
                buttons: '<button class="iconpicker-btn iconpicker-btn-cancel btn btn-default btn-sm">Cancel</button>' + ' <button class="iconpicker-btn iconpicker-btn-accept btn btn-primary btn-sm">Accept</button>',
                search: '<input type="search" class="form-control iconpicker-search" placeholder="Type to filter" />',
                iconpicker: '<div class="iconpicker"><div class="iconpicker-items"></div></div>',
                iconpickerItem: '<a role="button" href="javascript:;" class="iconpicker-item"><i></i></a>'
            }
        });

	</script>

	<script >
        "use strict"
		$('#sherah-table__vendor').DataTable({
				searching: true,
				info: false,
				lengthChange: true,
				scrollCollapse: true,
				paging: true,
                order: [[1, 'asc']],
				language: {
					paginate: {
						next: '<i class="fas fa-angle-right"></i>', // Font Awesome class for next button
						previous: '<i class="fas fa-angle-left"></i>' // Font Awesome class for previous button
					},
					lengthMenu: 'Showing _MENU_',
					searchPlaceholder: 'Search...',
					search: '<span class="sherah-data-table-label">Search</span>',

				}
			});
	</script>

	<script >
        "use strict"
		//Sidebar
		// Get all navigation items
		var navItems = document.querySelectorAll(".sherah-dashboard-menu li");

		// Add click event listeners to navigation items
		navItems.forEach(function (item) {
		item.addEventListener("click", function () {
			// Remove active class from all items
			navItems.forEach(function (item) {
			item.classList.remove("active");
			});
			// Add active class to clicked item
			this.classList.add("active");
		});
		});
	</script>




