<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Change Home Content & Picture</li>
			</ul>
		</div>
		<h3 class="page-title">Upload Picture</h3>
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title">Header Picture</h3>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse">
						<i class="fa fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<div class="row">
				<div class="col-md-4">
				<form method="POST" enctype="multipart/form-data" id="fileUploadForm">
					<div class="form-group">
						<label class="control-label" for="uploadfile">Upload File:</label>
						<input type="file" class="form-control" id="uploadfile" placeholder="Upload File"  name="uploadfile" accept="image/*"></input>
					</div>
					<button type="submit" class="btn btn-default" id="btnSubmit">Upload</button>
				</form>
					<div><span>${message}</span></div>
				</div>
				<div class="col-md-8">
				<form:form method="POST" action="/dashboard/content/image/homepage" modelAttribute="contentImageHomepage">
					<div class="row" id="no_po_field_box" style="padding-top:10px;">
						<div class="form-display-as-box col-lg-4 control-label"
							id="no_po_display_as_box">
							<label> Title Image</label>
						</div>
						<div class="col-lg-8" id="no_po_input_box">
							<form:input id="field-no_po" class="form-control" path="title"
								value="" maxlength="50" type="text" />
						</div>
					</div>	
					<div class="row" id="no_po_field_box" style="padding-top:10px;">
						<div class="form-display-as-box col-lg-4 control-label"
							id="no_po_display_as_box">
							<label> Sub Title Image</label>
						</div>
						<div class="col-lg-8" id="no_po_input_box">
							<form:input id="field-no_po" class="form-control" path="subtitle"
								value="" maxlength="50" type="text" />
						</div>
					</div>	
					<div class="row" id="no_po_field_box" style="padding-top:10px;">
						<div class="form-display-as-box col-lg-4 control-label"
							id="no_po_display_as_box">
							<label> Button Status</label>
						</div>
						<div class="col-lg-6" id="no_po_input_box">
							<form:select path="button" id="button" name="button" class="form-control">
								<option value="">--Please Select--</option>
								<option value="1">Active</option>
								<option value="0">Inactive</option>
							</form:select>
						</div>
						<div class="col-lg-2">
							<button type="submit" class="btn btn-md btn-primary">Update</button>
						</div>
					</div>
				</form:form>	
				</div>
				</div>
				<div class="table-scrollable">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>Title</th>
								<th>Content</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty contents}">
								<c:forEach var="content" items="${contents}">
									<tr>
										<td>${content.id}</td>
										<td>${content.title}</td>
										<td>${content.content}</td>
										<td class="td-action">
											<ul class="tools list-unstyled table-menu">
												<li><a
													href="/dashboard/content/homepage/edit?id=${content.id }"
													class="edit_button"><i class="fa fa-pencil"></i> Edit</a></li>
												<li><a
													href="/dashboard/content/homepage/delete?id=${content.id }"
													class="delete-row"><i class="fa fa-trash-o"></i> Delete</a></li>
											</ul>
										</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty contents}">
								<tr>
									<td colspan="4">No data found</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>