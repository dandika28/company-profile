<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="${pageContext.request.contextPath}/assets/css/starter-template.css" rel="stylesheet" media="screen" />
<link href="${pageContext.request.contextPath}/assets/css/datatables.min.css" rel="stylesheet" media="screen" />
 
<script
  src="${pageContext.request.contextPath}/assets/js/datatable/jquery-3.1.1.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/datatable/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/admin.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/fnSetFilteringEnterPress.js"></script>

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
				<div class="starter-template">
					<div class="table-responsive">
						<table id="paginatedTable" class="table table-striped">
							<thead>
								<tr>
									<th>Credit Memo #</th>
									<th>Bill To</th>
									<th>Created Date</th>
									<th>Status</th>
									<th>Actions</th>
								</tr>
							</thead>

						</table>
					</div>
				</div>
			</div>
			<!-- /.box-body -->
		</div>
	</div>
</div>