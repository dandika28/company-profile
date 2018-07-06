<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Overview</li>
				<li><i class="fa fa-angle-right"></i> Edit Commitment</li>
			</ul>
		</div>
		<h3 class="page-title">Our Commitment</h3>
		<div class="row">
			<div class="col-lg-12">
				<div class="flexigrid crud-form box"
					data-unique-hash="557498587ea6b8410b019e39815af033">
					<div class="box-header with-border">
						<h3 class="box-title">
							<i class="fa fa-plus-circle fa-fw"></i> Edit Commitment Content
						</h3>
					</div>

					<div id="main-table-box" class="box-body">
						<div class="col-lg-8">
							<form:form
								action="${pageContext.request.contextPath}/dashboard/content/homepage/edit"
								method="post" modelAttribute="content"
								class="form-horizontal" autocomplete="off"
								enctype="multipart/form-data" accept-charset="utf-8">

								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Id Homepage Content<span class="required">*</span></label>
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
										<label> Title</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control" path="title"
											value="" maxlength="50" type="text" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Content</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:textarea id="elm1" name="elm1" rows="15" cols="60"
											path="content" />
									</div>
								</div>
								<br>
								
								<div id="report-error"
									class="report-div error alert alert-danger" role="alert"></div>
								<div id="report-success"
									class="report-div success alert alert-success"></div>


								<button type="submit" class="btn btn-primary">Update</button>

								<!--button type="button" id="save-and-go-back-button" class="btn btn-info">Save and go back to list</button-->
								<a
									href="${pageContext.request.contextPath}/dashboard/content/homepage"
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