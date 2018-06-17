<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>

<!DOCTYPE html>
<html lang="en">

<!-- BEGIN HEAD -->
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
	rel="stylesheet" type="text/css" />
<link
	href="assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/pages/css/login-custom.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN PAGE LEVEL PLUGINS -->
<tilesx:useAttribute id="page_style_plugins" name="page_style_plugins"
	classname="java.util.List" ignore="true" />

<!-- BEGIN THEME GLOBAL STYLES -->
<link href="assets/global/css/components-md.min.css" rel="stylesheet"
	id="style_components" type="text/css" />
<link href="assets/global/css/plugins-md.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->

<!-- BEGIN PAGE LEVEL STYLES -->
<tilesx:useAttribute id="page_level_styles" name="page_level_styles"
	classname="java.util.List" ignore="true" />

<!-- BEGIN THEME LAYOUT STYLES -->
<link href="assets/layouts/layout3/css/layout.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets/layouts/layout3/css/themes/default.min.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="assets/layouts/layout3/css/custom.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME LAYOUT STYLES -->

<link rel="shortcut icon" href="favicon.png" />

<script src="assets/custom/zdesk-widget.js" type="text/javascript"></script>
</head>

<body class="page-container-bg-solid page-md login">
	<div class="logo">
		<a href="${pageContext.request.contextPath}/home"><img
			src="assets/layouts/layout3/img/logo_mikatama.png"></a>
	</div>
	<div class="content">
		<form:form class="login-form" action="${pageContext.request.contextPath}/loginProcess" method="post"
			novalidate="novalidate" modelAttribute="userLogin">
			<h3 class="form-title">Sign In</h3>
			<div class="alert alert-danger display-hide">
				<button class="close" data-close="alert"></button>
				<span> Enter any username and password. </span>
			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<form:input class="form-control form-control-solid placeholder-no-fix"
					type="text" autocomplete="off" placeholder="Username"
					path="username"/>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<form:input class="form-control form-control-solid placeholder-no-fix"
					type="password" autocomplete="off" placeholder="Password"
					path="password"/>
			</div>
			<div class="form-actions">
				<button type="submit" class="btn btn-success uppercase">Login</button>
				<form:errors id="alert-form" path="notification"></form:errors>
			</div>
		</form:form>
	</div>

	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->

	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="assets/global/scripts/app.min.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->

	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="assets/layouts/layout3/scripts/layout.min.js"
		type="text/javascript"></script>
	<script src="assets/layouts/layout3/scripts/demo.min.js"
		type="text/javascript"></script>
	<script src="assets/layouts/global/scripts/quick-sidebar.min.js"
		type="text/javascript"></script>
	<script src="assets/layouts/global/scripts/quick-nav.min.js"
		type="text/javascript"></script>
	<!-- END THEME LAYOUT SCRIPTS -->
</body>
</html>