<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Overview</li>
				<li><i class="fa fa-angle-right"></i> Detail Product</li>
			</ul>
		</div>
		<h3 class="page-title">Product</h3>
		<div class="row">
			<div class="col-lg-12">
				<div class="flexigrid crud-form box"
					data-unique-hash="557498587ea6b8410b019e39815af033">
					<div class="box-header with-border">
						<h3 class="box-title">
							<i class="fa fa-plus-circle fa-fw"></i> Detail Product
						</h3>
					</div>

					<div id="main-table-box" class="box-body">
						<div class="portlet-body form">
							<form class="form-horizontal" role="form">
								<div class="form-body">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4"> Id Product:</label>
												<div class="col-md-8">
													<p class="form-control-static">${product.id }</p>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4"> Product Name:</label>
												<div class="col-md-8">
													<p class="form-control-static">${product.productName }</p>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4"> Status:</label>
												<div class="col-md-8">
													<p class="form-control-static">${product.status }</p>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4"> Price:</label>
												<div class="col-md-8">
													<p class="form-control-static">${product.price }</p>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4"> Stock:</label>
												<div class="col-md-8">
													<p class="form-control-static">${product.stock }</p>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4"> Product
													Description:</label>
												<div class="col-md-8">
													<p class="form-control-static">${product.productDesc }</p>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-4 "> Image:</label>
												<div class="col-md-8">
													<div class="listPreviewUpload file-mobile"
														data-type="mobile" style="display: block">
														<div class="wrap-preview">
															<div class="box-image">
																<img title="${product.image}"
																	src="<c:url value="/images/product/${product.image }" />"
																	class="thumb preview" style="height: 250px;" />

															</div>
															<p class="cancel-file-upload"></p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<!-- Start of hidden inputs -->
									<input id="field-created_by" name="created_by" value="1"
										class="form-control" type="hidden">
									<div id="report-error"
										class="report-div error alert alert-danger" role="alert"></div>
									<div id="report-success"
										class="report-div success alert alert-success"></div>


									<a href="${pageContext.request.contextPath}/dashboard/product"
										class="btn btn-primary">OK</a>

									<!--button type="button" id="save-and-go-back-button" class="btn btn-info">Save and go back to list</button-->
									<!-- a href="${contextPath }/dashboard/product" class="btn btn-default">OK</a-->
									<span class="small-loading" id="FormLoading"><img
										src="${pageContext.request.contextPath}/assets/metronic/svg/loading-spin-primary.svg"
										alt="loading..."> Loading, saving data...</span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>