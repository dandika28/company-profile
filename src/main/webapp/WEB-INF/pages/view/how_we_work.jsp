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
							<h1>How We Work</h1>
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
							<div class="portlet light portlet-fit ">
								<div class="portlet-title">
									<div class="caption">
										<i class="icon-microphone font-green"></i> <span
											class="caption-subject bold font-green uppercase"> How
											We Work</span>
									</div>
									<!-- BEGIN ACTIONS -->
									<!-- END ACTIONS -->
								</div>
								<div class="portlet-body">
									<div class="mt-timeline-2">
										<div class="mt-timeline-line border-grey-steel"></div>
										<ul class="mt-container">
										<c:forEach var="ourWork" items="${ouwWorks }">
											<c:if test="${ourWork ne null }">
											<li class="mt-item">
												<div
													class="mt-timeline-icon bg-${ourWork.iconColor } bg-font-red border-grey-steel">
													<i class="${ourWork.icon }"></i>
												</div>
												<div class="mt-timeline-content ">
													<div class="mt-content-container">
														<div class="mt-title">
															<h3 class="mt-content-title">${ourWork.title }</h3>
														</div>
														<div class="mt-author">
															<div class="mt-avatar">
																<c:if test="${ourWork.process eq 'customer' }">
																	<img src="../assets/pages/media/users/client.png" />
																</c:if>
																<c:if test="${ourWork.process eq 'company' }">
																	<img src="../assets/pages/media/users/call_center.png" />
																</c:if>
															</div>
														</div>
														<div class="mt-content border-grey-salt">
															${ourWork.content }
														</div>
													</div>
												</div>
											</li>
											</c:if>
											<c:if test="${ourWork eq null }">
												<li class="mt-item hidden"></li>
											</c:if>
										</c:forEach>
										</ul>
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