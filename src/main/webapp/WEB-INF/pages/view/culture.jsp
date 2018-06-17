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
							<h1>Our Culture</h1>
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
							<div class="search-page search-content-1">
								<!-- BEGIN SEARCH BAR -->
								<!-- END SEARCH BAR -->
								<div class="row">
									<div class="col-md-7">
										<div class="search-container ">
											<ul>
												<c:forEach var="ourCulture" items="${ourCultures}">
				                                    <li class="search-item clearfix">
													    <a href="#"> <img src="<c:url value="images/page_culture/${ourCulture.image }" />"></a>
													    <div class="search-content">
													        <h2 class="search-title">
																<a href="#">${ourCulture.title}</a>
															</h2>
													        ${ourCulture.content}
													    </div>
													</li>
				                                </c:forEach>
											</ul>
										</div>
									</div>
									<div class="col-md-5">
										<!-- BEGIN PORTLET-->
										<div class="portlet light ">
											<div class="portlet-title">
												<div class="caption">
													<i class="icon-edit font-dark"></i> <span
														class="caption-subject font-dark bold uppercase">Our
														Commitment</span>
												</div>
												<!-- BEGIN ACTIONS -->
												<!-- END ACTIONS -->
											</div>
											<div class="portlet-body">
												<c:forEach var="ourCommitment" items="${ourCommitments}">
				                                    <div class="note ${ourCommitment.style}">
														<h4 class="block">${ourCommitment.title}</h4>
														<p>${ourCommitment.content}</p>
													</div>
				                                </c:forEach>
												
											</div>
										</div>
										<!-- END PORTLET-->
									</div>
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