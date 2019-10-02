<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>${the_title} - ${company_name}</title>

	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicon -->
	<link rel="shortcut icon" href="${images_folder}/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="${images_folder}/icon.png">

	<!-- Google font (font-family: 'Montserrat', sans-serif;) -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700" rel="stylesheet">
	<!-- Google font (font-family: 'Open Sans', sans-serif;) -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400,400i,600,700" rel="stylesheet">

	<!-- Plugins -->
	<link rel="stylesheet" href="${css_folder}/plugins.css">

	<@liferay_util["include"] page=top_head_include />

	<!-- Js Files -->
	<script src="${javascript_folder}/vendor/modernizr-3.6.0.min.js"></script>
	<script src="${javascript_folder}/popper.min.js"></script>
	<script src="${javascript_folder}/plugins.js"></script>
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="wrapper" id="wrapper">

	<header role="banner" class="header">
	
		<!-- Header Top Area -->
		<div class="header-toparea">
			<div class="container">
				<div class="row justify-content-betwween">
					<div class="col-lg-6">
						<ul class="header-topcontact">
							<li><i class="zmdi zmdi-phone"></i> TELEFONE : <a href="#">0800 123 4000</a></li>
							<li><i class="zmdi zmdi-email"></i> E-MAIL : <a href="#">contato@lifeseguros.com</a></li>
						</ul>
					</div>
					<div class="col-lg-6">
						<ul class="header-toplinks">
							<#if !is_signed_in><li>
								<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
							</li></#if>
							<li><a href="#">FAÇA UMA COTAÇÃO</a></li>
							<li><a href="#">PRECISA DE UM CORRETOR?</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--// Header Top Area -->

		<!-- Header Bottom Area -->
		<div id="heading" class="header-bottomarea">

			<div class="container">
				<div class="header-bottom">

					<!-- Header Logo -->
					<a href="${site_default_url}" class="header-logo" <@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						<img alt="${logo_description}" src="${images_folder}/logo/logo.png">
					</a>
					<!--// Header Logo -->

					<!-- Main Navigation -->
					<#if has_navigation && is_setup_complete>
						<#include "${full_templates_path}/navigation.ftl" />
					</#if>
					<!--// Main Navigation -->

				</div>

			</div>
		</div>
		<!--// Header Bottom Area -->

		<!-- Mobile Menu -->
		<div class="mobile-menu-wrapper clearfix">
			<div class="container">
				<div class="mobile-menu"></div>
			</div>
		</div>
		<!--// Mobile Menu -->

	</header>

	<section id="content">
		<h2 class="hide-accessible" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<footer id="footer" role="contentinfo">
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>