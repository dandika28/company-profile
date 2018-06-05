<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Our Culture</li>
			</ul>
		</div>
		<h3 class="page-title">Our Culture</h3>
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title">Table List</h3>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse">
						<i class="fa fa-minus"></i>
					</button>
				</div>
				<!-- /.box-tools -->
			</div>
				<div class="col-xs-6" style="padding:5px;margin:0 0 0 5px;">
					<!-- Button ADD  -->
					<a href="/content/ourwork/add" class="add-anchor add_button btn btn-primary" >
						<!--a href="http://localhost/bigrafis/crud/users/add" class='add-anchor add_button btn btn-primary'-->
						<i class="fa fa-plus-circle"></i> <span class="add">Add
							Content</span>
					</a>
					<!-- Akhir Button ADD  -->
				</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div class="table-scrollable">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Id</th>
								<th>Title</th>
								<th>Content</th>
								<th>Icon</th>
								<th>Icon Color</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty ourWorks}">
								<c:forEach var="ourWork" items="${ourWorks}">
									<tr>
										<td>${ourWork.id}</td>
										<td>${ourWork.title}</td>
										<td>${ourWork.content}</td>
										<td>${ourWork.icon }</td>
										<td>${ourWork.iconColor }</td>
										<td class="td-action">
											<ul class="tools list-unstyled table-menu">
												<li><a href="/content/ourwork/edit?id=${ourWork.id }"
													class="edit_button"><i class="fa fa-pencil"></i> Edit</a></li>
												<li><a href="/content/ourwork/delete?id=${ourWork.id }"
													class="delete-row"><i class="fa fa-trash-o"></i> Delete</a></li>
											</ul>
										</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty ourWorks}">
								<tr>
									<td colspan="4">No data found</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
			<!-- /.box-body -->
		</div>
	</div>
</div>