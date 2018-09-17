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
				<div class="page-head" style="height:10px;">
					<div class="container">
						<!-- BEGIN PAGE TITLE -->
						<div class="page-title">
							<h1></h1>
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
							<!-- BEGIN CONTENT HEADER -->
							<div class="row margin-bottom-40 about-header" style="background-image: url(<c:url value="imagesHome/${homeImage }" />); background-repeat: no-repeat;
    background-size: auto;">
								<div class="col-md-12">
									<h1>${title }</h1>
									<h2>${subtitle }</h2>
								</div>
								<c:choose>
									<c:when test="${button eq '1' }">
										<a href="/product" class="btn btn-danger">ORDER NOW</a>
									</c:when>
									<c:otherwise></c:otherwise>
								</c:choose>
							</div>
							<!-- END CONTENT HEADER -->
							<!-- BEGIN CARDS -->
							<div class="row margin-bottom-20">
								<div class="col-lg-3 col-md-6">
									<div class="portlet light">
										<div class="card-icon">
											<i class="icon-user-follow font-red-sunglo theme-font"></i>
										</div>
										<div class="card-title">
											<span> ${content[0].title }</span>
										</div>
										<div class="card-desc">
											<span>${content[0].content }</span>
										</div>
									</div>
								</div>
								<div class="col-lg-3 col-md-6">
									<div class="portlet light">
										<div class="card-icon">
											<i class="icon-trophy font-green-haze theme-font"></i>
										</div>
										<div class="card-title">
											<span> ${content[1].title }</span>
										</div>
										<div class="card-desc">
											<span>${content[1].content }</span>
										</div>
									</div>
								</div>
								<div class="col-lg-3 col-md-6">
									<div class="portlet light">
										<div class="card-icon">
											<i class="icon-basket font-purple-wisteria theme-font"></i>
										</div>
										<div class="card-title">
											<span> ${content[2].title }</span>
										</div>
										<div class="card-desc">
											<span>${content[2].content }</span>
										</div>
									</div>
								</div>
								<div class="col-lg-3 col-md-6">
									<div class="portlet light">
										<div class="card-icon">
											<i class="icon-layers font-blue theme-font"></i>
										</div>
										<div class="card-title">
											<span> ${content[3].title }</span>
										</div>
										<div class="card-desc">
											<span>${content[3].content }</span>
										</div>
									</div>
								</div>
							</div>
							<!-- END CARDS -->
							<!-- BEGIN TEXT & VIDEO -->
							<!-- END TEXT & VIDEO -->
							<!-- BEGIN MEMBERS SUCCESS STORIES -->
							<!-- END MEMBERS SUCCESS STORIES -->
							<!-- BEGIN LINKS BLOCK -->
							<!-- END LINKS BLOCK -->
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