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
				<form method="POST" enctype="multipart/form-data" id="fileUploadForm">
					<div class="form-group">
						<label class="control-label" for="uploadfile">Upload File:</label>
						<input type="file" class="form-control" id="uploadfile" placeholder="Upload File"  name="uploadfile" accept="image/*"></input>
					</div>
					<button type="submit" class="btn btn-default" id="btnSubmit">Upload</button>
				</form>
					<div><span>${message}</span></div>
					
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
													href="${pageContext.request.contextPath}/dashboard/content/homepage/edit?id=${content.id }"
													class="edit_button"><i class="fa fa-pencil"></i> Edit</a></li>
												<li><a
													href="${pageContext.request.contextPath}/dashboard/content/homepage/delete?id=${content.id }"
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