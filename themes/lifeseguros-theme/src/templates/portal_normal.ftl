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

	<!-- Footer -->
		<footer class="footer" role="contentinfo">

			<!-- Footer Contact Area -->
			<div class="footer-contact-area">
				<div class="container">
					<div class="footer-contact">
						<div class="row">
							<div class="col">
								<div class="footer-contact-block">
									<span class="footer-contact-icon">
										<i class="zmdi zmdi-phone"></i>
									</span>
									<p><a href="#">+0884567863</a><br><a href="#">+0884567863</a></p>
								</div>
							</div>
							<div class="col">
								<div class="footer-contact-block">
									<span class="footer-contact-icon">
										<i class="zmdi zmdi-home"></i>
									</span>
									<p>958 Lilyan Junction, Mitchellmouth, Rwanda</p>
								</div>
							</div>
							<div class="col">
								<div class="footer-contact-block">
									<span class="footer-contact-icon">
										<i class="zmdi zmdi-email"></i>
									</span>
									<p><a href="#">info@example.com</a><br><a href="#">info2@example.com</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--// Footer Contact Area -->

			<!-- Footer Inner -->
			<div class="footer-inner">

				<!-- Footer Widgets Area -->
				<div class="footer-widgets-area section-padding-lg">
					<div class="container">
						<div class="row widgets footer-widgets">

							<div class="col-lg-3 col-md-6">
								<div class="single-widget widget-info">
									<div class="logo">
										<a href="index.html">
											<img src="assets/images/logo/logo-2.png" alt="footer logo">
										</a>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
										incisequi nesciunt. Neque
										porro quisquam.</p>
									<ul class="footer-socialicons">
										<li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
										<li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
									</ul>
								</div>
							</div>

							<div class="col-lg-2 col-md-6">
								<div class="single-widget widget-links">
									<h4 class="widget-title">
										<span>Policy</span>
									</h4>
									<ul>
										<li><a href="#">Term</a></li>
										<li><a href="#">Licenses</a></li>
										<li><a href="#">Fund</a></li>
										<li><a href="#">Support</a></li>
										<li><a href="#">Security</a></li>
									</ul>
								</div>
							</div>

							<div class="col-lg-3 col-md-6">
								<div class="single-widget widget-latestblog">
									<h4 class="widget-title">
										<span>Latest Blog</span>
									</h4>
									<ul>
										<li>
											<div class="widget-latestblog-image">
												<a href="blog-details.html">
													<img src="assets/images/blog/thumbnails/blog-thumbnail-1.png" alt="blog thumbnail">
												</a>
											</div>
											<span>1st Janu, 2018</span>
											<h5><a href="blog-details.html">Ipsam rerum nisi beatae et</a></h5>
										</li>
										<li>
											<div class="widget-latestblog-image">
												<a href="blog-details.html">
													<img src="assets/images/blog/thumbnails/blog-thumbnail-2.png" alt="blog thumbnail">
												</a>
											</div>
											<span>1st Janu, 2018</span>
											<h5><a href="blog-details.html">Ipsam rerum nisi beatae et</a></h5>
										</li>
									</ul>
								</div>
							</div>

							<div class="col-lg-4 col-md-6">
								<div class="single-widget widget-newsletter">
									<h4 class="widget-title">
										<span>Newsletter</span>
									</h4>
									<p>Lorem ipsum dolor sit amet, coadipisicint, sed do eiusmod tempor incididunt</p>
									<form action="#" class="widget-newsletter-form">
										<input type="text" placeholder="Your email...">
										<button type="submit"><img src="assets/images/icons/paper-plane-white.png" alt="send"></button>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!--// Footer Widgets Area -->

				<!-- Footer Copyright Area -->
				<div class="footer-copyright-area">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-lg-6 col-12">
								<p class="copyright-text">Copyright 2019 &copy; <a href="http://www.liferay.com">Liferay</a>, All Rights
									Reserved</p>
							</div>
							<div class="col-lg-6 col-12">
								<ul class="copyright-links">
									<li><a href="#">Ajuda</a></li>
									<li><a href="#">Sobre</a></li>
									<li><a href="#">Produtos</a></li>
									<li><a href="#">Privacidade</a></li>
									<li><a href="#">Suporte </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--// Footer Copyright Area -->

			</div>
			<!--// Footer Inner -->

		</footer>
		<!--// Footer -->
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>