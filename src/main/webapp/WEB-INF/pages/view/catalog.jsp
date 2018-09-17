<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-wrapper-row full-height">
	<div class="page-wrapper-middle">
		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<!-- BEGIN CONTENT BODY -->
				<!-- BEGIN PAGE HEAD-->
				<div class="page-head">
					<div class="container">
						<!-- BEGIN PAGE TITLE -->
						<div class="page-title">
							<h1>Products & Services</h1>
						</div>
						<!-- END PAGE TITLE -->
						<!-- BEGIN PAGE TOOLBAR -->
						<div class="page-toolbar">
							<!-- BEGIN THEME PANEL -->
							<!-- END THEME PANEL -->
						</div>
						<!-- END PAGE TOOLBAR -->
					</div>
				</div>
				<!-- END PAGE HEAD-->
				<!-- BEGIN PAGE CONTENT BODY -->
				<div class="page-content">
					<div class="container">
						<!-- BEGIN PAGE BREADCRUMBS -->
						<!-- END PAGE BREADCRUMBS -->
						<!-- BEGIN PAGE CONTENT INNER -->
						<div class="page-content-inner">
							<div class="portfolio-content portfolio-1">
								<div id="js-filters-juicy-projects" class="cbp-l-filters-button">
									<div data-filter="*"
										class="cbp-filter-item-active cbp-filter-item btn dark btn-outline uppercase">
										All
										<div class="cbp-filter-counter"></div>
									</div>
								</div>
								<div id="js-grid-juicy-projects" class="cbp">
								<c:forEach var="product" items="${productList }">
									<div class="cbp-item graphic" style="width: 430px;left: 0px;top: 0px;height: 430px;">
										<div class="cbp-caption">
											<div class="cbp-caption-defaultWrap">
												<img src="<c:url value="images/product/${product.image }" />" alt="">
											</div>
											<div class="cbp-caption-activeWrap">
												<div class="cbp-l-caption-alignCenter">
													<div class="cbp-l-caption-body">
														<a
															href="detail?id=${product.id }"
															class="cbp-singlePage cbp-l-caption-buttonLeft btn red uppercase btn red uppercase"
															rel="nofollow">Buy</a>
													</div>
												</div>
											</div>
										</div>
										<div
											class="cbp-l-grid-projects-title uppercase text-center uppercase text-center">${product.productName }</div>
									</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<!-- END PAGE CONTENT INNER -->
					</div>
				</div>
				<!-- END PAGE CONTENT BODY -->
				<!-- END CONTENT BODY -->
			</div>
			<!-- END CONTENT -->
			<!-- BEGIN QUICK SIDEBAR -->
			<!-- END QUICK SIDEBAR -->
		</div>
		<!-- END CONTAINER -->
	</div>
</div>