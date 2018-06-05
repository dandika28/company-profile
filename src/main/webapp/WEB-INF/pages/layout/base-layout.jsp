<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	href="/assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN PAGE LEVEL PLUGINS -->
<tilesx:useAttribute id="page_style_plugins" name="page_style_plugins"
	classname="java.util.List" ignore="true" />
<c:forEach var="item" items="${ page_style_plugins }">
	<c:out
		value='<link href="${ item }" rel="stylesheet" type="text/css" />'
		escapeXml="false" />
</c:forEach>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN THEME GLOBAL STYLES -->
<link href="/assets/global/css/components-md.min.css" rel="stylesheet"
	id="style_components" type="text/css" />
<link href="/assets/global/css/plugins-md.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->

<!-- BEGIN PAGE LEVEL STYLES -->
<tilesx:useAttribute id="page_level_styles" name="page_level_styles"
	classname="java.util.List" ignore="true" />
<c:forEach var="item" items="${ page_level_styles }">
	<c:out
		value='<link href="${ item }" rel="stylesheet" type="text/css" />'
		escapeXml="false" />
</c:forEach>
<!-- END PAGE LEVEL STYLES -->

<!-- BEGIN THEME LAYOUT STYLES -->
<link href="/assets/layouts/layout3/css/layout.min.css" rel="stylesheet"
	type="text/css" />
<link href="/assets/layouts/layout3/css/themes/default.min.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="/assets/layouts/layout3/css/custom.min.css" rel="stylesheet"
	type="text/css" />
<link href="/assets/layouts/layout3/css/custom.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME LAYOUT STYLES -->

<link rel="shortcut icon" href="favicon.png" />

<link rel="stylesheet" href="/assets/metronic/css/w3.css" type="text/css"/>
<style>
.mySlides {
	display: none
}

.demo {
	cursor: pointer
}
</style>

<script src="/assets/custom/zdesk-widget.js" type="text/javascript"></script>
</head>
<!-- END HEAD -->

<body class="page-container-bg-solid page-md">
	<div class="page-wrapper">
		<div class="page-wrapper-row">
			<div class="page-wrapper-top">
				<!-- BEGIN HEADER -->
				<tiles:insertAttribute name="header" />
				<!-- END HEADER -->
			</div>
		</div>

		<tiles:insertAttribute name="body" />

		<div class="page-wrapper-row">
			<div class="page-wrapper-bottom">
				<!-- BEGIN FOOTER -->
				<tiles:insertAttribute name="footer" />
				<!-- END FOOTER -->
			</div>
		</div>
	</div>

	<!-- BEGIN QUICK NAV -->
	<!-- END QUICK NAV -->

	<!-- BEGIN CORE PLUGINS -->
	<script src="/assets/metronic/js/metronic.js"
		type="text/javascript"></script>
	<script src="/assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="/assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="/assets/global/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="/assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->

	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="/assets/global/scripts/app.min.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<tilesx:useAttribute id="page_level_plugins" name="page_level_plugins"
		classname="java.util.List" ignore="true" />
	<c:forEach var="item" items="${ page_level_plugins }">
		<script src="${ item }" type="text/javascript"></script>
	</c:forEach>
	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<tilesx:useAttribute id="page_level_scripts" name="page_level_scripts"
		classname="java.util.List" ignore="true" />
	<c:forEach var="item" items="${ page_level_scripts }">
		<script src="${ item }" type="text/javascript"></script>
	</c:forEach>
	<!-- END PAGE LEVEL SCRIPTS -->

	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="/assets/layouts/layout3/scripts/layout.min.js"
		type="text/javascript"></script>
	<script src="/assets/layouts/layout3/scripts/demo.min.js"
		type="text/javascript"></script>
	<script src="/assets/layouts/global/scripts/quick-sidebar.min.js"
		type="text/javascript"></script>
	<script src="/assets/layouts/global/scripts/quick-nav.min.js"
		type="text/javascript"></script>
	<!-- END THEME LAYOUT SCRIPTS -->
	<script src="/assets/metronic/js/custom-script.js"
		type="text/javascript"></script>
	
	<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			QuickSidebar.init(); // init quick sidebar
			Demo.init(); // init demo features
			FormWizard.init();
		});
	</script>

</body>
</html>