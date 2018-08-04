<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div class="page-wrapper-row full-height">
	<div class="page-wrapper-middle">
		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<!-- BEGIN CONTENT BODY -->
				<!-- BEGIN PAGE HEAD-->
				<div class="page-head">
					<div class="container">
						<!-- BEGIN PAGE TITLE -->
						<div class="page-title">
							<h1>Order Product</h1>
						</div>
						<!-- END PAGE TITLE -->
						<!-- BEGIN PAGE TOOLBAR -->
						<div class="page-toolbar">
							<!-- BEGIN THEME PANEL -->
							<!-- END THEME PANEL -->
						</div>
						<!-- END PAGE TOOLBAR -->
					</div>
				</div>
				<!-- END PAGE HEAD-->
				<!-- BEGIN PAGE CONTENT BODY -->
				<div class="page-content">
					<div class="container">
						<div class="page-content-inner">
							<div class="row">
								<div class="col-md-12">
									<div class="portlet box blue" id="form_wizard_1">
										<div class="portlet-title">
											<div class="caption">
												<i class="fa fa-gift"></i> Order Wizard - <span
													class="step-title"> Step 1 of 3 </span>
											</div>
											<div class="tools hidden-xs">
												<a href="javascript:;" class="collapse"> </a> <a
													href="#portlet-config" data-toggle="modal" class="config">
												</a> <a href="javascript:;" class="reload"> </a> <a
													href="javascript:;" class="remove"> </a>
											</div>
										</div>
										<div class="portlet-body form">
											<div class="form-section">
												<form:form action="/confirmation" class="form-horizontal"
													id="submit_form" method="POST" autocomplete="off" enctype="multipart/form-data"
													modelAttribute="orderProcess">
													<div class="form-wizard">
														<div class="form-body">
															<ul class="nav nav-pills nav-justified steps">
																<li><a href="#tab1" data-toggle="tab" class="step">
																		<span class="number"> 1 </span> <span class="desc">
																			<i class="fa fa-check"></i> Order Info
																	</span>
																</a></li>
																<li><a href="#tab2" data-toggle="tab" class="step">
																		<span class="number"> 2 </span> <span class="desc">
																			<i class="fa fa-check"></i> Upload Sample
																	</span>
																</a></li>
																<li><a href="#tab4" data-toggle="tab"
																	class="step active"> <span class="number"> 3
																	</span> <span class="desc"> <i class="fa fa-check"></i>
																			Confirm
																	</span>
																</a></li>
															</ul>
															<div id="bar" class="progress progress-striped"
																role="progressbar">
																<div class="progress-bar progress-bar-success"></div>
															</div>
															<div class="tab-content">
																<div class="alert alert-danger display-none">
																	<button class="close" data-dismiss="alert"></button>
																	You have some form errors. Please check below.
																</div>
																<div class="alert alert-success display-none">
																	<button class="close" data-dismiss="alert"></button>
																	Your form validation is successful!
																</div>
																<div class="tab-pane active" id="tab1">
																	<h3 class="block">Provide your order details</h3>
																	<div class="form-group">
																		<label class="control-label col-md-3">Fullname
																			<span class="required"> * </span>
																		</label>
																		<div class="col-md-4">
																			<form:input type="text" class="form-control"
																				name="fullname" path="fullname" />
																			<span class="help-block"> Provide your
																				fullname </span>
																		</div>
																	</div>
																	<div class="form-group">
																		<label class="control-label col-md-3">Address
																			<span class="required"> * </span>
																		</label>
																		<div class="col-md-4">
																			<form:input type="text" class="form-control"
																				name="address" path="address" />
																			<span class="help-block"> Provide your street
																				address </span>
																		</div>
																	</div>
																	<div class="form-group">
																		<label class="control-label col-md-3">Phone
																			Number <span class="required"> * </span>
																		</label>
																		<div class="col-md-4">
																			<form:input type="text" class="form-control"
																				name="phone" path="phone" />
																			<span class="help-block"> Provide your phone
																				number </span>
																		</div>
																	</div>
																	<div class="form-group">
																		<label class="control-label col-md-3">Email <span
																			class="required" aria-required="true"> * </span>
																		</label>
																		<div class="col-md-4">
																			<form:input type="text" class="form-control"
																				name="email" path="email" />
																			<span class="help-block"> Provide your email
																				address </span>
																		</div>
																	</div>
																</div>
																<div class="tab-pane" id="tab2">
																	<h3 class="block">Give your sample here</h3>
																	<div class="form-group">
																		<label class="control-label col-md-3"></label>
																		<div class="col-md-4">
																			<p
																				class="warning-message msg-not-uploaded order file-mobile error mb10"
																				data-msgerror="Mohon lampirkan foto KTP"
																				data-type="mobile"></p>
																			<!-- <p class="warning-message msg-maximum-upload error mb10" data-msgerror="Maximum upload only 2 file attachment"></p> -->
																			<p
																				class="warning-message msg-maximum-upload order file-mobile error mb10"
																				data-msgerror="Maksimum lampiran hanya 1 gambar"
																				data-errsize="Masukkan gambar dengan ukuran file yang lebih kecil"
																				data-type="mobile"></p>
																			<div class="input-file-area file-mobile"
																				data-type="mobile">
																				<div class="rounded">
																					<img class="inner-text"
																						src="/assets/img/camera.png" alt="Camera Icon" />
																				</div>
																				<div class="input-file order">
																					<form:input id="file" class="input-file-upload-order file-mobile form-control"
																						name="file" accept="image/*" type="file"
																						path="file" />
																					<span class="help-block"> Provide your sample </span>
																				</div>
																			</div>
																			<div class="listPreviewUpload-order file-mobile"
																				data-type="mobile"></div>
																		</div>
																	</div>
																</div>
																<div class="tab-pane" id="tab4">
																	<h3 class="block">Confirm your order</h3>
																	<h4 class="form-section">Order Details</h4>
																	<div class="form-group">
																		<label class="control-label col-md-3">Name:</label>
																		<div class="col-md-4">
																			<p class="form-control-static"
																				data-display="fullname"></p>
																		</div>
																	</div>
																	<form:hidden path="productId"/>
																	<form:hidden path="total"/>
																	<div class="form-group">
																		<label class="control-label col-md-3">Address:</label>
																		<div class="col-md-4">
																			<p class="form-control-static" data-display="address"></p>
																		</div>
																	</div>
																	<div class="form-group">
																		<label class="control-label col-md-3">Phone:</label>
																		<div class="col-md-4">
																			<p class="form-control-static" data-display="phone"></p>
																		</div>
																	</div>
																	<div class="form-group">
																		<label class="control-label col-md-3">Email:</label>
																		<div class="col-md-4">
																			<p class="form-control-static" data-display="email"></p>
																		</div>
																	</div>
																	<h4 class="form-section">Sample Details</h4>
																	<div class="form-group">
																		<label class="control-label col-md-3">Sample:</label>
																		<div class="col-md-4">
																			<div class="listPreviewUpload-order file-mobile"
																				data-type="mobile"></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<a href="javascript:;"
																		class="btn default button-previous"> <i
																		class="m-icon-swapleft"></i> Back
																	</a> <a href="javascript:;" class="btn blue button-next">
																		Continue <i class="m-icon-swapright m-icon-white"></i>
																	</a> <button type="submit" class="btn green button-submit">
																		Submit <i class="m-icon-swapright m-icon-white"></i>
																	</button>
																</div>
															</div>
														</div>
													</div>
												</form:form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END PAGE CONTENT BODY -->
				<!-- END CONTENT BODY -->
			</div>
			<!-- END CONTENT -->
			<!-- BEGIN QUICK SIDEBAR -->
			<!-- END QUICK SIDEBAR -->
		</div>
		<!-- END CONTAINER -->
	</div>
</div>