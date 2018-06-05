<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<style>
.totalOrder{
	font-size: 12px;
    font-weight: 100;
    text-transform: uppercase;
    transition: box-shadow .15s cubic-bezier(.4,0,.2,1);
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    -ms-border-radius: 2px;
    -o-border-radius: 2px;
    border-radius: 2px;
    overflow: hidden;
    position: relative;
    user-select: none;
    padding: 8px 14px 7px;
    width:70px;
}

</style>

<div class="portfolio-content">
	<div class="cbp-l-project-title">${product.productName }</div>
	<div class="cbp-l-project-container">
		<div class="cbp-l-project-desc">
			<div class="col-md-6">
				<div class="w3-content" style="max-width: 300px">
					<c:forEach var="slideShowImage" items="${slideShow }">
						<img class="mySlides" src="/assets/img/product/${slideShowImage }"
							style="width: 288px; height: 288px;">
					</c:forEach>

					<div class="w3-row-padding w3-section">
						<c:forEach var="item" items="${slideShow }" varStatus="status">
							<div class="w3-col s4">
								<img class="demo w3-opacity w3-hover-opacity-off"
									src="/assets/img/product/${item }" style="width: 74px; height: 74px;"
									onclick="currentDiv(${status.count})">
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="col-md-6">
			<form:form action="${contextPath }/order" method="post" modelAttribute="orderProcess" autocomplete="off">
				<div class="cbp-l-project-desc-title">
					<span>Project Description</span>
				</div>
				<div class="cbp-l-project-desc-text">${product.productDesc }</div>
				<form:input class="totalOrder" type="number" step="1" max="500" value="" path="total"/>
				<form:hidden path="productId" value="${product.id }"/>
				
				<button type="submit"
				class="btn red uppercase">Add to cart</button>
			</div>
			</form:form>
		</div>
		<div class="cbp-l-project-details">
			<div class="cbp-l-project-details-title">
				<span>Project Details</span>
			</div>
			<ul class="cbp-l-project-details-list">
				<li><strong>Client</strong>John Doe</li>
				<li><strong>Date</strong>22 December 2013</li>
				<li><strong>Categories</strong>Logo, Graphic</li>
			</ul>
			<a href="#" target="_blank"
				class="cbp-l-project-details-visit btn red uppercase">visit the
				site</a>
		</div>
	</div>
	<div class="cbp-l-project-container">
		<div class="cbp-l-project-related">
			<div class="cbp-l-project-desc-title">
				<span>Related Projects</span>
			</div>
			<ul class="cbp-l-project-related-wrap">
				<li class="cbp-l-project-related-item"><a
					href="../assets/global/plugins/cubeportfolio/ajax/project1.html"
					class="cbp-singlePage cbp-l-project-related-link" rel="nofollow">
						<img src="../assets/global/img/portfolio/600x600/1.jpg" alt="">
						<div class="cbp-l-project-related-title">Speed Detector</div>
				</a></li>
				<li class="cbp-l-project-related-item"><a
					href="../assets/global/plugins/cubeportfolio/ajax/project2.html"
					class="cbp-singlePage cbp-l-project-related-link" rel="nofollow">
						<img src="../assets/global/img/portfolio/600x600/5.jpg" alt="">
						<div class="cbp-l-project-related-title">World Clock Widget</div>
				</a></li>
				<li class="cbp-l-project-related-item"><a
					href="../assets/global/plugins/cubeportfolio/ajax/project1.html"
					class="cbp-singlePage cbp-l-project-related-link" rel="nofollow">
						<img src="../assets/global/img/portfolio/600x600/27.jpg" alt="">
						<div class="cbp-l-project-related-title">To-Do Dashboard</div>
				</a></li>
			</ul>
		</div>
	</div>
	<br> <br> <br>
</div>

<script>
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(
						" w3-opacity-off", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-opacity-off";
		}
	</script>