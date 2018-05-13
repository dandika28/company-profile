<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<div class="page-header">
	<!-- BEGIN HEADER TOP -->
	<div class="page-header-top">
		<div class="container">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href="index.html"> <img
					src="/assets/layouts/layout3/img/logo_mikatama.png" alt="logo"
					class="logo-default" style="height: 35px;">
				</a>
			</div>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="menu-toggler"></a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<!-- END TOP NAVIGATION MENU -->
		</div>
	</div>
	<!-- END HEADER TOP -->
	<!-- BEGIN HEADER MENU -->
	<div class="page-header-menu">
		<div class="container">
			<!-- BEGIN HEADER SEARCH BOX -->
			<form class="search-form" action="page_general_search.html"
				method="GET">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search"
						name="query"> <span class="input-group-btn"> <a
						href="javascript:;" class="btn submit"> <i
							class="icon-magnifier"></i>
					</a>
					</span>
				</div>
			</form>
			<!-- END HEADER SEARCH BOX -->
			<!-- BEGIN MEGA MENU -->
			<div class="hor-menu  ">
				<ul class="nav navbar-nav">
					<li aria-haspopup="true"
						class="menu-dropdown classic-menu-dropdown "><a
						href="${pageContext.request.contextPath}/home">Home<span class="arrow"></span></a></li>
					<li aria-haspopup="true"
						class="menu-dropdown classic-menu-dropdown "><a
						href="javascript:;">Overview<span class="arrow"></span>
					</a>
						<ul class="dropdown-menu pull-left">
							<li aria-haspopup="true" class=" "><a
								href="${pageContext.request.contextPath}/culture" class="nav-link  "> <i
									class="icon-users"></i> Our Culture
							</a></li>
							<li aria-haspopup="true" class=" "><a
								href="${pageContext.request.contextPath}/how_we_work" class="nav-link  "> <i
									class="icon-book-open"></i> How We Work
							</a></li>
						</ul></li>
					<li aria-haspopup="true"
						class="menu-dropdown classic-menu-dropdown "><a
						href="${pageContext.request.contextPath}/product">Products &
							Services<span class="arrow"></span>
					</a></li>
					<li aria-haspopup="true"
						class="menu-dropdown classic-menu-dropdown scroll-to-bottom "><a
						class="scroll-to-bottom">Contact Us<span class="arrow scroll-to-bottom"></span>
					</a></li>
				</ul>
			</div>
			<!-- END MEGA MENU -->
		</div>
	</div>
	<!-- END HEADER MENU -->
</div>