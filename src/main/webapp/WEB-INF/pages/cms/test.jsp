
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="keyword" content="Codeigniter, bootstrap, Grocerycrud">
<meta name="description"
	content="Custom Framework Codeigniter and bootstrap">
<meta name="author" content="Deky Mulyana">
<title>Bigrafis Webtools</title>
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost/bigrafis/assets/img/favicon-96x96.png">

<!--GroceryCRUD CSS-->

<!--Bootstrap-->
<link rel="stylesheet"
	href="http://localhost/bigrafis/assets/css/bootstrap.min.css">

<!--Font-->
<link rel="stylesheet"
	href="http://localhost/bigrafis/assets/css/font-awesome.min.css">

<!--Metronic-->
<link rel="stylesheet"
	href="http://localhost/bigrafis/assets/css/themes/darkblue.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/bigrafis/assets/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/bigrafis/assets/css/plugins.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/bigrafis/assets/css/components.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/bigrafis/assets/css/custom.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/bigrafis/assets/js/plugins/simple-line-icons/simple-line-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/bigrafis/assets/js/plugins/uniform/css/uniform.default.css">

<!--Alertify-->
<link rel="stylesheet"
	href="http://localhost/bigrafis/assets/css/alertify.min.css">
<link rel="stylesheet"
	href="http://localhost/bigrafis/assets/css/default.min.css">

<!--CSS PLUGINS-->
<!--AdminLTE-->
<link rel="stylesheet"
	href="http://localhost/bigrafis/assets/css/AdminLTE.min.css">
<!--Custom CSS-->
<link rel="stylesheet"
	href="http://localhost/bigrafis/assets/css/a-design.css">

<!-- CUSTOM METRONIC-->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/bigrafis/assets/metronic/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/bigrafis/assets/metronic/css/simple-line-icons.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/bigrafis/assets/metronic/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/bigrafis/assets/metronic/css/uniform.default.css"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/bigrafis/assets/metronic/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link
	href="http://localhost/bigrafis/assets/metronic/css/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/bigrafis/assets/metronic/css/fullcalendar.min.css"
	rel="stylesheet" type="text/css">
<link href="http://localhost/bigrafis/assets/metronic/css/jqvmap.css"
	rel="stylesheet" type="text/css">
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="http://localhost/bigrafis/assets/metronic/css/tasks.css"
	rel="stylesheet" type="text/css">
<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->
<!--link href="http://localhost/bigrafis/assets/metronic/css/components.css" id="style_components" rel="stylesheet" type="text/css"-->
<link href="http://localhost/bigrafis/assets/metronic/css/plugins.css"
	rel="stylesheet" type="text/css">
<link href="http://localhost/bigrafis/assets/metronic/css/layout.css"
	rel="stylesheet" type="text/css">
<link href="http://localhost/bigrafis/assets/metronic/css/darkblue.css"
	rel="stylesheet" type="text/css" id="style_color">

<link rel="stylesheet"
	href="http://localhost/bigrafis/assets/css/themes/darkblue.css">

<link href="http://localhost/bigrafis/assets/metronic/css/custom.css"
	rel="stylesheet" type="text/css">
<link
	href="http://localhost/bigrafis/assets/metronic/css/simplegrid.css"
	rel="stylesheet" type="text/css">

<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico">

<!-- END CUSTOM METRONIC-->

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
				<a href="http://localhost/bigrafis/crud/index"> <img
					src="http://localhost/bigrafis/assets/img/logo_big_new.png"
					alt="logo" class="logo-default" />
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

					<!--Behin Notif -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown dropdown-user"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <img
							src="assets/img/avatar04.png"
							class="user-image" alt="User Image" /> <span class="username"">admin</span>
							<i class="fa fa-angle-down"></i>
					</a>

						<ul class="dropdown-menu dropdown-menu-default">
							<li class="divider"></li>
							<li>
								<center>
									<img src="assets/img/avatar04.png"
										class="img-circle" alt="User Image" height="70" width="70" />
									<p>
										Admin System <br> 12-May-2018
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
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->

		</div>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->

	<div class="clearfix"></div>

	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">


				<!--form action="#" method="get" class="sidebar-form">
                <center>
				<div class="input-group">
                    <input type="text" class="form-control searchlist" id="searchSidebar" placeholder="Search..." autocomplete="off"/>
                </div>
				</center>
			</form-->

				<ul class="page-sidebar-menu " data-keep-expanded="false"
					data-auto-scroll="true" data-slide-speed="200">

					<li class="sidebar-toggler-wrapper">
						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
						<div class="sidebar-toggler"></div> <!-- END SIDEBAR TOGGLER BUTTON -->
					</li>

					<li class="heading">
						<h3 class="uppercase">MAIN NAVIGATION</h3>
					</li>
					<li id=""><a href="http://localhost/bigrafis/crud/index"
						class="name"> <i class="fa fa-dashboard"></i> <span
							class="title">Dashboard</span></a></li>

					<li><a href="#"> <i class="fa fa-lock"></i> <span
							class="title">Access</span> <span class="arrow "></span></a>
						<ul class="sub-menu">

							<li id=""><a href="http://localhost/bigrafis/crud/users"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									Users
							</a></li>

							<li id=""><a href="http://localhost/bigrafis/crud/groups"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									Groups
							</a></li>
						</ul></li>

					<li><a href="#"> <i class="fa fa-shopping-cart"></i> <span
							class="title">Purchase Order</span> <span class="arrow "></span></a>
						<ul class="sub-menu">

							<li id="1"><a
								href="http://localhost/bigrafis/Purchase/purchase_order"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									Purchase Order Receive
							</a></li>
						</ul></li>

					<li id="menu-menu"><a
						href="http://localhost/bigrafis/crud/header_menu" class="name">
							<i class="fa fa-bars"></i> <span class="title">Menu
								Management</span>
					</a></li>

					<li id=""><a href="http://localhost/bigrafis/crud/settings"
						class="name"> <i class="fa fa-gears"></i> <span class="title">Settings</span></a></li>

					<li><a href="#"> <i class="fa fa-play"></i> <span
							class="title">SPK</span> <span class="arrow "></span></a>
						<ul class="sub-menu">

							<li id="23"><a
								href="http://localhost/bigrafis/Purchase/spk_induk" class="name">
									<i class="fa fa-angle-right" class="name"></i> SPK Produksi
									(Induk)
							</a></li>

							<li id="3"><a
								href="http://localhost/bigrafis/Purchase/spk_proses_mesin"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									SPK Proses Mesin
							</a></li>
						</ul></li>

					<li><a href="#"> <i class="fa fa-gear"></i> <span
							class="title">Mesin Management</span> <span class="arrow "></span></a>
						<ul class="sub-menu">

							<li id="1"><a href="http://localhost/bigrafis/product/mesin"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									Tambah Mesin
							</a></li>

							<li id="2"><a
								href="http://localhost/bigrafis/product/mesin_category"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									Mesin Category
							</a></li>

							<li id="3"><a
								href="http://localhost/bigrafis/Product/operatormesin"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									Operator Mesin
							</a></li>
						</ul></li>

					<li id="6"><a href="http://localhost/bigrafis/nota"
						class="name"> <i class="fa fa-bell"></i> <span class="title">Nota
								Transfer</span></a></li>

					<li><a href="#"> <i class="fa fa-database"></i> <span
							class="title">Product Management</span> <span class="arrow "></span></a>
						<ul class="sub-menu">

							<li id="1"><a
								href="http://localhost/bigrafis/product/product_category"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									Product Category
							</a></li>

							<li id=""><a
								href="http://localhost/bigrafis/product/product" class="name">
									<i class="fa fa-angle-right" class="name"></i> Tambah Product
							</a></li>
						</ul></li>

					<li><a href="#"> <i class="fa fa-book"></i> <span
							class="title">Material</span> <span class="arrow "></span></a>
						<ul class="sub-menu">

							<li id="1"><a
								href="http://localhost/bigrafis/product/material_category"
								class="name"> <i class="fa fa-angle-right" class="name"></i>
									Material Category
							</a></li>

							<li id="2"><a
								href="http://localhost/bigrafis/product/material" class="name">
									<i class="fa fa-angle-right" class="name"></i> Material Master
									Data
							</a></li>
						</ul></li>

					<li id="8"><a href="http://localhost/bigrafis/product/gudang"
						class="name"> <i class="fa fa-wrench"></i> <span class="title">Gudang</span></a></li>

					<li id="9"><a
						href="http://localhost/bigrafis/Customer/customer" class="name">
							<i class="fa fa-user"></i> <span class="title">Customer</span>
					</a></li>

					<li><a href="#"> <i class="fa fa-file"></i> <span
							class="title">Report</span> <span class="arrow "></span></a>
						<ul class="sub-menu">

							<li id="1"><a
								href="http://localhost/bigrafis/report/mesinreport" class="name">
									<i class="fa fa-angle-right" class="name"></i> Report mesin
							</a></li>

							<li id="2"><a
								href="http://localhost/bigrafis/report/spkreport" class="name">
									<i class="fa fa-angle-right" class="name"></i> Report SPK Induk
							</a></li>
						</ul></li>

				</ul>

			</div>
		</div>
		<!-- END SIDEBAR -->
	</div>
	<!-- END CONTAINER -->

	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">

			<!-- BEGIN PAGE HEADER-->
			<div class="page-bar">


				<ul class="page-breadcrumb">
					<li><i class="fa fa-dashboard"></i> Dashboard</li>
				</ul>
			</div>
			<h3 class="page-title">Dashboard</h3>
			<div class="box box-info">
				<!--div class="box-header with-border">
		<h3 class="box-title">Welcome</h3>
		<div class="box-tools pull-right">
		    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
		</div><!-- /.box-tools -->
				<!--/div><!-- /.box-header -->
				<!--div class="box-body">
		<p>Sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here</p>
		<p>
			<a href="" class="btn btn-primary btn-lg"><i class="fa fa-download"></i> Download User Guide</a>&nbsp;
		</p>
	</div><!-- /.box-body -->
			</div>
			<div class="row">
				<div class="col-md-4">
					<!--div class="small-box bg-aqua-active">
		
            <div class="inner">
              <h3></h3>
              <p>Purchase Order</p>
            </div>
            <div class="icon">
              <i class="fa fa-film"></i>
            </div>
            <a href="" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
        </div-->
					<div class="dashboard-stat red-intense">
						<div class="visual">
							<i class="fa fa-bar-chart-o"></i>
						</div>
						<div class="details">
							<div class="number">4</div>
							<div class="desc">Purchase Order</div>
						</div>
						<a class="more" href="javascript:;"> View more <i
							class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="dashboard-stat blue-madison">
						<div class="visual">
							<i class="fa fa-comments"></i>
						</div>
						<div class="details">
							<div class="number">6</div>
							<div class="desc">SPK Induk</div>
						</div>
						<a class="more" href="javascript:;"> View more <i
							class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="dashboard-stat green-haze">
						<div class="visual">
							<i class="fa fa-shopping-cart"></i>
						</div>
						<div class="details">
							<div class="number">10</div>
							<div class="desc">Nota Transfer</div>
						</div>
						<a class="more" href="javascript:;"> View more <i
							class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="portlet light ">
						<div class="portlet-title">
							<div class="caption">
								<i class="icon-cursor font-purple-intense hide"></i> <span
									class="caption-subject font-purple-intense bold uppercase">SPK
									Mesin Proses</span>
							</div>
							<div class="actions">
								<a href="javascript:;"
									class="btn btn-sm btn-circle btn-default easy-pie-chart-reload">
									<i class="fa fa-repeat"></i> Reload
								</a>
							</div>
						</div>
						<div class="portlet-body">
							<div class="row">
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number transactions" data-percent="15.3">
											<span> 15.3 </span> %
										</div>
										<a class="title" href="javascript:;"> Cetak <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm"></div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number visits" data-percent="91.3">
											<span> 91.3 </span> %
										</div>
										<a class="title" href="javascript:;"> Coating <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm"></div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number visits" data-percent="">
											<span> </span> %
										</div>
										<a class="title" href="javascript:;"> Hot-Stamping <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm"></div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="3.2">
											<span> 3.2 </span> %
										</div>
										<a class="title" href="javascript:;"> Cutting <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm"></div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number transactions" data-percent="0.4">
											<span> 0.4 </span> %
										</div>
										<a class="title" href="javascript:;"> Gluing <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm"></div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number visits" data-percent="0.0">
											<span> 0.0 </span> %
										</div>
										<a class="title" href="javascript:;"> Packing <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm"></div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="0.0">
											<span> 0.0 </span> %
										</div>
										<a class="title" href="javascript:;"> Sortir <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="0.0">
											<span> 0.0 </span> %
										</div>
										<a class="title" href="javascript:;"> Die-Cutting <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="">
											<span> </span> %
										</div>
										<a class="title" href="javascript:;"> Plate Maker <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div></div>
				</div>
			</div>
		</div>
	</div>

	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="page-footer-inner">
			<strong>Copyright &copy; 2018 <a href="#">Bigrafis</a>.
			</strong> All rights reserved.
		</div>
	</div>
	<!-- END FOOTER -->


	<!-- GroceryCRUD JS -->
	<script
		src="http://localhost/bigrafis/assets/js/plugins/jQuery/jQuery-2.1.4.min.js"></script>


	<!--JS Plugins-->
	<!--Bootstrap JS-->
	<script src="http://localhost/bigrafis/assets/js/bootstrap.min.js"></script>

	<!--Alertify JS-->
	<script src="http://localhost/bigrafis/assets/js/alertify.min.js"></script>

	<!--AdminLTE JS-->
	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery.slimScroll.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/js/plugins/fastclick/fastclick.min.js"></script>
	<script src="http://localhost/bigrafis/assets/js/app.min.js"></script>

	<script>
		site = 'http://localhost/bigrafis/';
		ur_class = 'crud';
		url_function = 'index';
		function datatablesOptions() {
			var option = {
				"orderClasses" : false,
			};
			return option;
		}
		function afterDatatables() {
		}
	</script>

	<script src="http://localhost/bigrafis/assets/js/list.min.js"></script>
	<!--Custom JS-->
	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery-easypiechart/jquery.easypiechart.min.js"></script>
	<script src="http://localhost/bigrafis/assets/metronic/js/metronic.js"></script>
	<script src="http://localhost/bigrafis/assets/metronic/js/layout.js"></script>
	<script src="http://localhost/bigrafis/assets/metronic/js/demo.js"></script>
	<script src="http://localhost/bigrafis/assets/js/a-design.js"></script>
	<script src="http://localhost/bigrafis/assets/js/index.js"></script>

	<script
		src="http://localhost/bigrafis/assets/metronic/js/quick-sidebar.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery.uniform.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/flot/jquery.flot.resize.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/flot/jquery.flot.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery.cokie.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery.blockui.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery-ui.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery-migrate.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/ecommerce-index.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/bootstrap-switch.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/bootstrap-hover-dropdown.min.js"></script>

	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery.pulsate.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/metronic/js/jquery.sparkline.min.js"></script>
	<script src="http://localhost/bigrafis/assets/metronic/js/index.js"></script>
	<script src="http://localhost/bigrafis/assets/metronic/js/tasks.js"></script>

	<script
		src="http://localhost/bigrafis/assets/js/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="http://localhost/bigrafis/assets/js/plugins/datatables/jquery.dataTables.min.js"></script>

	<script>
		jQuery(document).ready(function() {
			Metronic.init(); // init metronic core componets
			Layout.init(); // init layout
			QuickSidebar.init(); // init quick sidebar
			Demo.init(); // init demo features
			Index.init();
			Index.initDashboardDaterange();
			Index.initJQVMAP(); // init index page's custom scripts
			Index.initCalendar(); // init index page's custom scripts
			Index.initCharts(); // init index page's custom scripts
			Index.initChat();
			Index.initMiniCharts();
			Tasks.initDashboardWidget();

			/*
			 var result = $(".bDiv input").filter(function () {
			 return $.trim($(this).val()).length == 0
			 }).length == 0;

			 console.log("result" + result);

			 $('.sendButton').prop('disabled',true);
			 var inputs=jQuery.grep(inputs, function(input){
			 return input.length>0;
			 });
			 if(inputs.length>0) {
			 //return true;
			
			 //return false;
			 //$("input[id='qtydeliver']").keyup(function(){
			 //if($(this).val().length !=0){
			 console.log('false')
			 $('.sendButton').prop("disabled", false);            
			 }
			 else{
			 console.log('true')
			 $('.sendButton').prop("disabled",true);
			 }
			 //})*/
		});
	</script>


	<script>
		$('#header_notification_bar')
				.hover(
						function() {
							var id = $("#notification").attr('data-value');
							$
									.ajax({
										type : "POST",
										url : "http://localhost/bigrafis/index.php/Purchase/updatenotif",
										data : "groupId=" + id,
										success : function(data) {
											console.log(data)
											$('.badge').text('0');
										},
										error : function() {
											console.log('error: ' + data)
										},
									});
						});
	</script>
</body>
</html>