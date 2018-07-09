<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Overview</li>
				<li><i class="fa fa-angle-right"></i> Edit How We Work Content</li>
			</ul>
		</div>
		<h3 class="page-title">How We Work Content</h3>
		<div class="row">
			<div class="col-lg-12">
				<div class="flexigrid crud-form box"
					data-unique-hash="557498587ea6b8410b019e39815af033">
					<div class="box-header with-border">
						<h3 class="box-title">
							<i class="fa fa-plus-circle fa-fw"></i> Edit How We Work Content
						</h3>
					</div>

					<div id="main-table-box" class="box-body">
						<div class="col-lg-8">
							<form:form
								action="${pageContext.request.contextPath}/dashboard/content/ourwork/edit"
								method="post" modelAttribute="contentHowWork"
								class="form-horizontal" autocomplete="off"
								enctype="multipart/form-data" accept-charset="utf-8">

								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Id Our Work Content<span class="required">*</span></label>
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
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Icon</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:select path="icon" class="form-control">
											<optgroup label="Web Application Icons">
												<option value="icon-adjust">icon-adjust</option>
												<option value="icon-asterisk">icon-asterisk</option>
												<option value="icon-ban-circle">icon-ban-circle</option>
												<option value="icon-bar-chart">icon-bar-chart</option>
												<option value="icon-barcode">icon-barcode</option>
												<option value="icon-beaker">icon-beaker</option>
												<option value="icon-beer">icon-beer</option>
												<option value="icon-bell">icon-bell</option>
												<option value="icon-bell-alt">icon-bell-alt</option>
												<option value="icon-bolt">icon-bolt</option>
												<option value="icon-book">icon-book</option>
												<option value="icon-bookmark">icon-bookmark</option>
												<option value="icon-bookmark-empty">icon-bookmark-empty</option>
												<option value="icon-briefcase">icon-briefcase</option>
												<option value="icon-bullhorn">icon-bullhorn</option>
												<option value="icon-calendar">icon-calendar</option>
												<option value="icon-camera">icon-camera</option>
												<option value="icon-camera-retro">icon-camera-retro</option>
												<option value="icon-certificate">icon-certificate</option>
												<option value="icon-check">icon-check</option>
												<option value="icon-check-empty">icon-check-empty</option>
												<option value="icon-circle">icon-circle</option>
												<option value="icon-circle-blank">icon-circle-blank</option>
												<optgroup label="Text Editor Icons">
													<option value="icon-file">icon-file</option>
													<option value="icon-file-alt">icon-file-alt</option>
													<option value="icon-cut">icon-cut</option>
													<option value="icon-copy">icon-copy</option>
													<option value="icon-paste">icon-paste</option>
													<option value="icon-save">icon-save</option>
													<option value="icon-undo">icon-undo</option>
													<option value="icon-repeat">icon-repeat</option>
													<option value="icon-text-height">icon-text-height</option>
													<option value="icon-text-width">icon-text-width</option>
													<option value="icon-align-left">icon-align-left</option>
													<option value="icon-align-center">icon-align-center</option>
													<option value="icon-align-right">icon-align-right</option>
													<option value="icon-align-justify">icon-align-justify</option>
													<optgroup label="Directional Icons">
														<option value="icon-angle-left">icon-angle-left</option>
														<option value="icon-angle-right">icon-angle-right</option>
														<option value="icon-angle-up">icon-angle-up</option>
														<option value="icon-angle-down">icon-angle-down</option>
														<option value="icon-arrow-down">icon-arrow-down</option>
														<option value="icon-arrow-left">icon-arrow-left</option>
														<option value="icon-arrow-right">icon-arrow-right</option>
														<option value="icon-arrow-up">icon-arrow-up</option>
														<option value="icon-caret-down">icon-caret-down</option>
														<option value="icon-caret-left">icon-caret-left</option>
														<option value="icon-caret-right">icon-caret-right</option>
														<option value="icon-caret-up">icon-caret-up</option>
														<option value="icon-chevron-down">icon-chevron-down</option>
														<option value="icon-chevron-left">icon-chevron-left</option>
														<optgroup label="Video Player Icons">
															<option value="icon-play-circle">icon-play-circle</option>
															<option value="icon-play">icon-play</option>
															<option value="icon-pause">icon-pause</option>
															<option value="icon-stop">icon-stop</option>
															<option value="icon-step-backward">icon-step-backward</option>
															<option value="icon-fast-backward">icon-fast-backward</option>
															<option value="icon-backward">icon-backward</option>
															<option value="icon-forward">icon-forward</option>
															<optgroup label="Social Icons">
																<option value="icon-phone">icon-phone</option>
																<option value="icon-phone-sign">icon-phone-sign</option>
																<option value="icon-facebook">icon-facebook</option>
																<option value="icon-facebook-sign">icon-facebook-sign</option>
																<option value="icon-twitter">icon-twitter</option>
																<option value="icon-twitter-sign">icon-twitter-sign</option>
																<option value="icon-github">icon-github</option>
																<option value="icon-github-alt">icon-github-alt</option>
																<option value="icon-github-sign">icon-github-sign</option>
																<optgroup label="Medical Icons">
																	<option value="icon-ambulance">icon-ambulance</option>
																	<option value="icon-beaker">icon-beaker</option>
																	<option value="icon-h-sign">icon-h-sign</option>
																	<option value="icon-hospital">icon-hospital</option>
																	<option value="icon-medkit">icon-medkit</option>
																	<option value="icon-plus-sign-alt">icon-plus-sign-alt</option>
																	<option value="icon-stethoscope">icon-stethoscope</option>
																	<option value="icon-user-md">icon-user-md</option>
										</form:select>
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Icon Color</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:select path="iconColor" class="form-control">
											<form:option value="red" label="Red" />
											<form:option value="blue" label="Blue" />
											<form:option value="green-turquoise" label="Ggreen Turquoise" />
											<form:option value="purple-medium" label="Purple Medium" />
											<form:option value="blue-steel" label="Blue Steel" />
											<form:option value="green-jungle" label="Green Jungle" />
										</form:select>
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label>Step Process</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:select path="process" class="form-control">
											<form:option value="customer" label="Customer" />
											<form:option value="company" label="Mikatama" />
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
								<a
									href="${pageContext.request.contextPath}/dashboard/content/ourwork"
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