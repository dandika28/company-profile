<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Product List</li>
			</ul>
		</div>
		<h3 class="page-title">List Product</h3>
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title">Product List</h3>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse">
						<i class="fa fa-minus"></i>
					</button>
				</div>
				<!-- /.box-tools -->
			</div>
			<div class="box-body">
				<div class="col-xs-6" style="padding: 5px; margin: 0 0 0 5px;">
					<!-- Button ADD  -->
					<a href="${pageContext.request.contextPath}/dashboard/product/add"
						class="add-anchor add_button btn btn-primary"> <i
						class="fa fa-plus-circle"></i> <span class="add">Add
							Product</span>
					</a>
					<!-- Akhir Button ADD  -->
				</div>
				<div class="table-scrollable">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Id</th>
								<th>Product Name</th>
								<th>Product Desc</th>
								<th>Price</th>
								<th>Image</th>
								<th>Stock</th>
								<th>Status</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty products}">
								<c:forEach var="product" items="${products }">
									<tr>
										<td>${product.id }</td>
										<td>${product.productName }</td>
										<td>${product.productDesc }...</td>
										<td>Rp. <fmt:formatNumber value="${product.price }"
												type="currency" pattern="##,##0.00;-##,##0.00" /></td>
										<td><img
											src="<c:url value="/images/product/${product.image }" />"
											alt="" style="height: 50px; width: 50px;"></td>
										<td>${product.stock }</td>
										<td><c:choose>
												<c:when test="${product.status eq 1}">
													<span class="label label-sm label-success">Unhide</span>
												</c:when>
												<c:otherwise>
													<span class="label label-sm label-danger">Hide</span>
												</c:otherwise>
											</c:choose></td>
										<td class="td-action">
											<ul class="tools list-unstyled table-menu">
												<li><a
													href="${pageContext.request.contextPath}/dashboard/product/detail?id=${product.id }"
													class="detail_button"><i class="fa fa-list"></i> Detail</a></li>
												<li><a
													href="${pageContext.request.contextPath}/dashboard/product/edit?id=${product.id }"
													class="edit_button"><i class="fa fa-pencil"></i> Edit</a></li>
												<li><a
													href="${pageContext.request.contextPath}/dashboard/product/delete?id=${product.id }"
													class="delete-row"><i class="fa fa-trash-o"></i> Delete</a></li>
											</ul>
										</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty products }">
								<tr>
									<td colspan="7">No data found</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>