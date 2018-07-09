<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Overview</li>
				<li><i class="fa fa-angle-right"></i> Edit Product</li>
			</ul>
		</div>
		<h3 class="page-title">Product</h3>
		<div class="row">
			<div class="col-lg-12">
				<div class="flexigrid crud-form box"
					data-unique-hash="557498587ea6b8410b019e39815af033">
					<div class="box-header with-border">
						<h3 class="box-title">
							<i class="fa fa-plus-circle fa-fw"></i> Edit Product
						</h3>
					</div>

					<div id="main-table-box" class="box-body">
						<div class="col-lg-8">
							<div class="form-section">
								<form:form
									action="${pageContext.request.contextPath}/dashboard/product/edit"
									method="post" modelAttribute="productAttribute"
									class="form-horizontal" autocomplete="off"
									enctype="multipart/form-data" accept-charset="utf-8">

									<div class="row" id="no_po_field_box">
										<div class="form-display-as-box col-lg-2 control-label"
											id="no_po_display_as_box">
											<label> Id Product<span class="required">*</span></label>
										</div>
										<div class="col-lg-10" id="no_po_input_box">
											<form:input id="field-no_po" class="form-control" path="id"
												value="" maxlength="50" type="text" readonly="true" />
										</div>
									</div>
									<br>
									<div class="row" id="no_po_field_box">
										<div class="form-display-as-box col-lg-2 control-label"
											id="no_po_display_as_box">
											<label> Product Name</label>
										</div>
										<div class="col-lg-10" id="no_po_input_box">
											<form:input id="field-no_po" class="form-control"
												path="productName" value="" maxlength="50" type="text" />
										</div>
									</div>
									<br>
									<div class="row" id="no_po_field_box">
										<div class="form-display-as-box col-lg-2 control-label"
											id="no_po_display_as_box">
											<label> Product Description</label>
										</div>
										<div class="col-lg-10" id="no_po_input_box">
											<form:textarea id="elm1" name="elm1" rows="15" cols="60"
												path="productDesc" />
										</div>
									</div>
									<br>
									<div class="row" id="no_po_field_box">
										<div class="form-display-as-box col-lg-2 control-label"
											id="no_po_display_as_box">
											<label> Price</label>
										</div>
										<div class="col-lg-10" id="no_po_input_box">
											<form:input id="field-no_po" class="form-control"
												path="price" value="" maxlength="50" type="text" />
										</div>
									</div>
									<br>
									<div class="row" id="no_po_field_box">
										<div class="form-display-as-box col-lg-2 control-label"
											id="no_po_display_as_box">
											<label> Stock</label>
										</div>
										<div class="col-lg-10" id="no_po_input_box">
											<form:input id="field-no_po" class="form-control"
												path="stock" value="" maxlength="50" type="text" />
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
												<form:option value="0" label="In-Active" />
												<form:option value="1" label="Active" />
											</form:select>
										</div>
									</div>
									<br>
									<div class="row" id="no_po_field_box">
										<div class="form-display-as-box col-lg-2 control-label"
											id="no_po_display_as_box">
											<label> Image</label>
										</div>
										<div class="col-md-10">
											<c:forEach var="productImage" varStatus="vs"
												items="${productImages }">
												<div class="col-md-4">
													<form:input
														class="input-file-upload file-mobile number-${productImage.id }"
														name="file" accept="image/*" type="file"
														path="productImages[${vs.index }].file" multiple="multiple"
														data-number="${productImage.id }"
														style="margin-left:-10px; display:none;" />
													<div class="row">
														<div
															class="listPreviewUpload file-mobile number-${productImage.id}"
															data-type="mobile" style="display: block"
															data-number="${productImage.id }">
															<div class="wrap-preview">
																<div class="box-image">
																	<img title="${productImage.image}"
																		src="<c:url value="/images/product/${productImage.image}" />"
																		class="thumb preview" />
																</div>
																<span class="cancel-file-upload"
																	data-number="${productImage.id }"></span>
															</div>
														</div>
													</div>
													<form:input type="hidden" value="${productImage.id }"
														path="productImages[${vs.index }].id"/>
												</div>
											</c:forEach>
											<form:hidden path="image"/>
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
									<a href="${pageContext.request.contextPath}/dashboard/product"
										class="btn btn-default">Cancel</a>
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
</div>