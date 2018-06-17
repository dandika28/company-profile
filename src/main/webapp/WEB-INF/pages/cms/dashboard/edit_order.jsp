<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Overview</li>
				<li><i class="fa fa-angle-right"></i> Edit Order</li>
			</ul>
		</div>
		<h3 class="page-title">Order Views</h3>
		<div class="row">
			<div class="col-lg-12">
				<div class="flexigrid crud-form box"
					data-unique-hash="557498587ea6b8410b019e39815af033">
					<div class="box-header with-border">
						<h3 class="box-title">
							<i class="fa fa-plus-circle fa-fw"></i> Edit Order View
						</h3>
					</div>

					<div id="main-table-box" class="box-body">
						<div class="col-lg-8">
							<form:form
								action="${pageContext.request.contextPath}/dashboard/order/edit"
								method="post" modelAttribute="orderProcess"
								class="form-horizontal" autocomplete="off"
								enctype="multipart/form-data" accept-charset="utf-8">

								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Order Id</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control"
											path="orderId" value="" maxlength="50" type="text"
											readonly="true" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Product</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<input id="field-no_po" class="form-control"
											value="${productName }" maxlength="50" type="text"
											readonly="true">
										<form:hidden path="productId" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Customer</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control"
											path="fullname" value="" maxlength="50" type="text"
											readonly="true" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Address</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:textarea rows="5" cols="75" path="address"
											readonly="true"
											style="background-color:#eeeeee; padding:6px 12px;" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Email</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control" path="email"
											value="" maxlength="50" type="text" readonly="true" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Phone</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control" path="phone"
											value="" maxlength="50" type="text" readonly="true" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Total Order</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control" path="total"
											value="" maxlength="50" type="text" readonly="true" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Image Mock Up</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<div class="listPreviewUpload file-mobile" data-type="mobile"
											style="display: block">
											<div class="wrap-preview">
												<div class="box-image">
													<img src="<c:url value="/images/order/${image}" />"
														class="thumb preview" style="height: 300px; width: 300px;" />
												</div>
												<span class="cancel-file-upload"></span>
											</div>
										</div>
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Created Date</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control"
											path="createdDate" value="" maxlength="50" type="text"
											readonly="true" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Status</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:select path="status" class="form-control">
											<form:option value="0" label="Pending" />
											<form:option value="1" label="Paid" />
										</form:select>
									</div>
								</div>
								<br>

								<!-- Start of hidden inputs -->
								<input id="field-created_by" name="created_by" value="1"
									class="form-control" type="hidden">
								<div id="report-error"
									class="report-div error alert alert-danger" role="alert"></div>
								<div id="report-success"
									class="report-div success alert alert-success"></div>


								<button type="submit" class="btn btn-primary">Update</button>

								<!--button type="button" id="save-and-go-back-button" class="btn btn-info">Save and go back to list</button-->
								<a href="${pageContext.request.contextPath}/dashboard/order"
									type="button" id="cancel-button" class="btn btn-default">Cancel</a>
								<span class="small-loading" id="FormLoading"><img
									src="${pageContext.request.contextPath}/assets/metronic/svg/loading-spin-primary.svg"
									alt="loading..."> Loading, saving data...</span>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>