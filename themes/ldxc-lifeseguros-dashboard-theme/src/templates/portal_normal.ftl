<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="${css_folder}/material-assets/demo/demo.css" rel="stylesheet" />

</head>

<body class="${css_class}">

	<@liferay_ui["quick-access"] contentId="#main-content" />

	<@liferay_util["include"] page=body_top_include />

	<@liferay.control_menu />

	<div class="ldxc">
	<div class="container-fluid wrapper" id="wrapper">

		<div class="sidebar" data-color="purple" data-background-color="white">
	
			<div class="logo">
				<a href="#" class="simple-text logo-normal">
					<img src="${site_logo}" width="110">
				</a>
			</div>

			<div class="sidebar-wrapper">
				
				<@liferay.navigation_menu instance_id="main_menu"  />

			</div>

			
		</div>
		<div class="main-panel">
<#--  
			<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<span class="navbar-brand">${the_title}</span>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
					<span class="sr-only">Toggle navigation</span>
					<span class="navbar-toggler-icon icon-bar"></span>
					<span class="navbar-toggler-icon icon-bar"></span>
					<span class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
		
						<ul class="navbar-nav">
							<li class="nav-item">
							<a class="nav-link" href="#pablo">
								<i class="material-icons">dashboard</i>
								<p class="d-lg-none d-md-block">
								Stats
								</p>
							</a>
							</li>
							<li class="nav-item dropdown">
							<a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="material-icons">notifications</i>
								<span class="notification">5</span>
								<p class="d-lg-none d-md-block">
								Some Actions
								</p>
							</a>
							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="#">Mike John responded to your email</a>
								<a class="dropdown-item" href="#">You have 5 new tasks</a>
								<a class="dropdown-item" href="#">You're now friend with Andrew</a>
								<a class="dropdown-item" href="#">Another Notification</a>
								<a class="dropdown-item" href="#">Another One</a>
							</div>
							</li>
							<li class="nav-item dropdown">
							<a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="material-icons">person</i>
								<p class="d-lg-none d-md-block">
								Account
								</p>
							</a>
							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
								<a class="dropdown-item" href="#">Profile</a>
								<a class="dropdown-item" href="#">Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Log out</a>
							</div>
							</li>
						</ul>
					</div>
				</div>
			</nav>  
			  -->

			<div class="header-toparea">
				<div class="autofit-col">
					<@liferay.user_personal_bar />
				</div>
			</div>


			<section class="content" id="content" >
				<div class="container-fluid" >
					
					<@liferay.breadcrumbs />

					<h1 class="hide-accessible">${the_title}</h1>

					<#if selectable>
						<@liferay_util["include"] page=content_include />
					<#else>
						${portletDisplay.recycle()}

						${portletDisplay.setTitle(the_title)}

						<@liferay_theme["wrap-portlet"] page="portlet.ftl">
							<@liferay_util["include"] page=content_include />
						</@>
					</#if>

				</div>
			</section>

		</div>
		</div>
	



	</div>

	</div>	
	<@liferay_util["include"] page=body_bottom_include />

	<@liferay_util["include"] page=bottom_include />

	<!-- inject:js -->
	<!-- endinject -->

	<!--   Core JS Files   -->
	<script src="${javascript_folder}/material-assets/js/core/popper.min.js"></script>
	<script src="${javascript_folder}/material-assets/js/core/bootstrap-material-design.min.js"></script>
	<script src="${javascript_folder}/material-assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Plugin for the momentJs  -->
	<script src="${javascript_folder}/material-assets/js/plugins/moment.min.js"></script>
	<!--  Plugin for Sweet Alert -->
	<script src="${javascript_folder}/material-assets/js/plugins/sweetalert2.js"></script>
	<!-- Forms Validations Plugin -->
	<script src="${javascript_folder}/material-assets/js/plugins/jquery.validate.min.js"></script>
	<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script src="${javascript_folder}/material-assets/js/plugins/jquery.bootstrap-wizard.js"></script>
	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src="${javascript_folder}/material-assets/js/plugins/bootstrap-selectpicker.js"></script>
	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script src="${javascript_folder}/material-assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
	<script src="${javascript_folder}/material-assets/js/plugins/jquery.dataTables.min.js"></script>
	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script src="${javascript_folder}/material-assets/js/plugins/bootstrap-tagsinput.js"></script>
	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src="${javascript_folder}/material-assets/js/plugins/jasny-bootstrap.min.js"></script>
	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script src="${javascript_folder}/material-assets/js/plugins/fullcalendar.min.js"></script>
	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script src="${javascript_folder}/material-assets/js/plugins/jquery-jvectormap.js"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="${javascript_folder}/material-assets/js/plugins/nouislider.min.js"></script>
	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<!-- Library for adding dinamically elements -->
	<script src="${javascript_folder}/material-assets/js/plugins/arrive.min.js"></script>
	<!-- Chartist JS -->
	<script src="${javascript_folder}/material-assets/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="${javascript_folder}/material-assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="${javascript_folder}/material-assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="${javascript_folder}/material-assets/demo/demo.js"></script>

	<script src="${javascript_folder}/material-assets/js/plugins/jquery.mask.min.js"></script>

	<script>
	$(document).ready(function() {
		// Javascript method's body can be found in assets/js/demos.js
		md.initDashboardPageCharts();

	});
	</script>

</body>

</html>














