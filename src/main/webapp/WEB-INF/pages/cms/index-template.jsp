<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Company Profile , CMS & Order Management"
	name="description" />
<meta content="Vimanalogy" name="author" />

<title><tiles:insertAttribute name="title" ignore="true" /></title>

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css">
<link
	href="/assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="/assets/pages/css/login-custom.css" rel="stylesheet"
	type="text/css" />
<link
	href="/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->

<!-- CUSTOM METRONIC-->
<!-- link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css"-->
<link href="/assets/metronic/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css">
<link href="/assets/metronic/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="/assets/metronic/css/simple-line-icons.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/metronic/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="/assets/metronic/css/uniform.default.css" rel="stylesheet"
	type="text/css">
<link href="/assets/metronic/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css">
<!-- BEGIN THEME STYLES -->
<link href="/assets/metronic/css/a-design.css" rel="stylesheet"
	type="text/css">
<link href="/assets/metronic/css/components.css"  id="style_components" rel="stylesheet" type="text/css">
<link href="/assets/metronic/css/plugins.css" rel="stylesheet"
	type="text/css">
<link href="/assets/metronic/css/layout.css" rel="stylesheet"
	type="text/css">
<link href="/assets/css/themes/darkblue.css" rel="stylesheet"
	type="text/css" id="style_color">

<link href="/assets/metronic/css/custom.css" rel="stylesheet"
	type="text/css">
<link href="/assets/metronic/css/simplegrid.css" rel="stylesheet"
	type="text/css">

<link rel="shortcut icon" href="favicon.png" />

<style type="text/css" media="print">
@page {
	size: auto; /* auto is the initial value */
	margin: 0mm; /* this affects the margin in the printer settings */
}

html {
	background-color: #FFFFFF;
	margin: 0px;
	/* this affects the margin on the html before sending to printer */
}

body {
	border: solid 1px blue;
	margin: 10mm 15mm 10mm 15mm; /* margin you want for the content */
}
</style>

</head>
<body class="page-header-fixed page-container-bg-solid ">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->
		<div class="page-header-inner">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href="${pageContext.request.contextPath}/home"> <img
					src="/assets/layouts/layout3/img/logo_mikatama.png" alt="logo"
					class="logo-default" style="height: 20px;" />
				</a>
			</div>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="menu-toggler responsive-toggler"
				data-toggle="collapse" data-target=".navbar-collapse"> </a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right ">
					<li class="dropdown dropdown-user"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <img
							src="assets/img/avatar04.png"
							class="user-image" alt="User Image"> <span class="username">admin</span>
							<i class="fa fa-angle-down"></i>
					</a>

						<ul class="dropdown-menu dropdown-menu-default">
							<li class="divider"></li>
							<li>
								<center>
									<img src="assets/img/avatar04.png"
										class="img-circle" alt="User Image" height="70" width="70">
									<p>
										Admin System <br> 10-May-2018
									</p>
								</center>
							</li>
							<li>
								<center>
									<a href="logout"> <i
										class="icon-key"></i> Log Out
									</a>
								</center>
							</li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="clearfix"></div>

	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">
				<ul class="page-sidebar-menu" data-keep-expanded="false"
					data-auto-scroll="true" data-slide-speed="200">
					<li class="sidebar-toggler-wrapper">
						<div class="sidebar-toggler"></div> 
					</li>
					<li class="heading">
					</li>
					<li><a href="/dashboard"
						class="name"> <i class="fa fa-dashboard"></i> <span
							class="title">Dashboard</span></a></li>
					<li><a href="#"> <i class="fa fa-lock"></i> <span
							class="title">Access</span> <span class="arrow"></span>
					</a>
						<ul class="sub-menu">
							<li><a href="http://localhost/bigrafis/crud/users"
								class="name"> <i class="fa fa-angle-right"></i> Users
							</a></li>
							<li><a href="http://localhost/bigrafis/crud/groups"
								class="name"> <i class="fa fa-angle-right"></i> Groups
							</a></li>
						</ul></li>
					<li> <!-- Start Sidebar Menu  -->
						<a href="#">
							<i class="icon-wallet"></i>
							<span class="title">Overview</span> <span class="arrow"></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="/content/culture" class="name">
									<i class="fa fa-angle-right"></i> Our Culture
								</a>
							</li>
							<li>
								<a href="/content/commitment" class="name">
									<i class="fa fa-angle-right"></i> Our Commitment
								</a>
							</li>
							<li>
								<a href="/content/ourwork" class="name">
									<i class="fa fa-angle-right"></i> How We Work
								</a>
							</li>
						</ul>
					</li> <!-- End Sidebar Menu  -->
				</ul>
			</div>
		</div>
		<!-- END SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	
	<!-- BEGIN CONTENT -->
	<tiles:insertAttribute name="body" />
	<!-- END CONTENT -->

	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="page-footer-inner">
			<strong>Copyright &copy; 2018 <a href="#">Mikatama</a>.
			</strong> All rights reserved.
		</div>
	</div>
	<!-- END FOOTER -->

	<!--JS Plugins-->
	<script src="/assets/metronic/js/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!--Bootstrap JS-->
	<script src="/assets/metronic/js/bootstrap.min.js"></script>
	<!--Alertify JS-->
	<script src="/assets/metronic/js/alertify.min.js"></script>
	
	<script>
    site         = 'http://localhost:8080/dashboard/';
    ur_class     = '';
    url_function = '';
            function datatablesOptions() { var option = { "orderClasses": false,  }; return option; }
    function afterDatatables() {  }
    </script>
	
	
	<!--AdminLTE JS-->
	<script src="/assets/metronic/js/jquery.slimscroll.min.js"></script>
	<script src="/assets/metronic/js/plugins/fastclick/fastclick.min.js"></script>
	<script src="/assets/metronic/js/app.min.js"></script>

	<script src="/assets/metronic/js/list.min.js"></script>
	<!--Custom JS-->
	<script src="/assets/metronic/js/jquery-easypiechart/jquery.easypiechart.min.js"></script>
	<script src="/assets/metronic/js/metronic.js"></script>
	<script src="/assets/metronic/js/layout.js"></script>
	<script src="/assets/metronic/js/demo.js"></script>
	<script src="/assets/metronic/js/a-design.js"></script>
	<script src="/assets/metronic/js/index.js"></script>

	<script src="/assets/metronic/js/quick-sidebar.js"></script>
	<script src="/assets/metronic/js/jquery.uniform.min.js"></script>
	<script src="/assets/metronic/js/flot/jquery.flot.resize.js"></script>
	<script src="/assets/metronic/js/flot/jquery.flot.js"></script>
	<script src="/assets/metronic/js/jquery.cokie.min.js"></script>
	<script src="/assets/metronic/js/jquery.blockui.min.js"></script>
	<script src="/assets/metronic/js/jquery-ui.min.js"></script>
	<script src="/assets/metronic/js/jquery-migrate.min.js"></script>
	<script src="/assets/metronic/js/ecommerce-index.js"></script>
	<script src="/assets/metronic/js/bootstrap-switch.min.js"></script>
	<script src="/assets/metronic/js/bootstrap-hover-dropdown.min.js"></script>

	<script src="/assets/metronic/js/jquery.pulsate.min.js"></script>
	<script src="/assets/metronic/js/jquery.sparkline.min.js"></script>
	<script src="/assets/metronic/js/index.js"></script>
	<script src="/assets/metronic/js/tasks.js"></script>
	
	<script language="javascript" type="text/javascript" src="/assets/js/tinymce/tinymce.min.js"></script>
	<script src="/assets/js/tinymce/jquery.tinymce.min.js"></script>

	<script>
		jQuery(document).ready(function() {
			Metronic.init(); // init metronic core componets
			Layout.init(); // init layout
			QuickSidebar.init(); // init quick sidebar
			Demo.init(); // init demo features
			Index.init();
			//Index.initDashboardDaterange();
			//Index.initJQVMAP(); // init index page's custom scripts
			//Index.initCalendar(); // init index page's custom scripts
			//Index.initCharts(); // init index page's custom scripts
			//Index.initChat();
			//Index.initMiniCharts();
			//Tasks.initDashboardWidget();
		});
	</script>
	
	<script language="javascript" type="text/javascript">
	  tinyMCE.init({
	    theme : "modern",
	    mode: "exact",
	    elements : "elm1",
	    theme_advanced_toolbar_location : "top",
	    theme_advanced_buttons1 : "bold,italic,underline,strikethrough,separator,"
	    + "justifyleft,justifycenter,justifyright,justifyfull,formatselect,"
	    + "bullist,numlist,outdent,indent",
	    theme_advanced_buttons2 : "link,unlink,anchor,image,separator,"
	    +"undo,redo,cleanup,code,separator,sub,sup,charmap",
	    theme_advanced_buttons3 : "",
	    height:"350px",
	    width:"400px",
		});
	</script>
</body>
</html>