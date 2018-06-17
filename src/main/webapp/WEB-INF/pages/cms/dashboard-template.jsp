<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Dashboard</li>
			</ul>
		</div>
		<h3 class="page-title">Order Details</h3>
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title">Order List</h3>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse">
						<i class="fa fa-minus"></i>
					</button>
				</div>
				<!-- /.box-tools -->
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div class="table-scrollable">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Credit Memo #</th>
								<th>Bill To</th>
								<th>Created Date</th>
								<th>Status</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty orders}">
								<c:forEach var="order" items="${orders}">
									<tr>
										<td>${order.orderId}</td>
										<td>${order.fullname}</td>
										<td>${order.createdDate}</td>
										<td>
											<c:choose>
												<c:when test="${order.status eq 0 }">
													<span class="label label-sm label-danger">Pending</span>
												</c:when>
												<c:otherwise>
													<span class="label label-sm label-success">Paid</span>
												</c:otherwise>
											</c:choose>
										</td>
										<td class="td-action">
											<ul class="tools list-unstyled table-menu">
												<li><a href="${pageContext.request.contextPath}/dashboard/order/edit?id=${order.orderId }" class="edit_button"><i
														class="fa fa-file-excel-o"></i> <span class="export"> Edit </span></a></li>
											</ul>
										</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty orders}">
								<tr>
									<td colspan="5">No data found</td>
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