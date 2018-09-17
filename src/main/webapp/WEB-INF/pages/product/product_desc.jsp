<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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

.other-products{

}

</style>

<div class="portfolio-content">
	<div class="cbp-l-project-title">${product.productName }</div>
	<div class="cbp-l-project-container">
		<div class="cbp-l-project-desc">
			<div class="col-md-5">
				<div class="w3-content" style="max-width: 300px">
					<c:forEach var="slideShowImage" items="${productImage }">
						<img class="mySlides" src="<c:url value="images/product/${slideShowImage.image }" />"
							style="width: 288px; height: 288px;">
							
					</c:forEach>

					<div class="w3-row-padding w3-section">
						<c:forEach var="item" items="${productImage }" varStatus="status">
							<div class="w3-col s4">
								<img class="demo w3-opacity w3-hover-opacity-off"
									src="<c:url value="images/product/${item.image }" />" alt="" onclick="currentDiv(${status.count})" style="width: 74px; height: 74px;">
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="col-md-7" style="padding: 10px;">
			<form:form action="/order" method="post" modelAttribute="orderProcess" autocomplete="off">
				<div class="cbp-l-project-desc-title">
					<span>Rp. <fmt:formatNumber value = "${product.price }" 
					type = "currency" pattern="##,##0.00;-##,##0.00"/></span>
				</div>
				<div class="cbp-l-project-desc-text">${product.productDesc }</div>
				<form:input class="totalOrder" type="number" step="1" max="500" min="1" value="1" path="total"/>
				<form:hidden path="productId" value="${product.id }"/>
				
				<button type="submit"
				class="btn red uppercase">Add to cart</button>
			</div>
			</form:form>
		</div>
		<div class="cbp-l-project-details">
			<div class="cbp-l-project-details-title">
				<span>Other products</span>
			</div>
			<ul class="cbp-l-project-details-list">
			<c:forEach var="product" items="${moreProducts }">
				<li class="list-product clearfix">
					<a href="detail?id=${product.id }"
						class="cbp-singlePage" rel="nofollow">
						<img alt="" src="<c:url value="images/product/${product.image }" />">
					</a>
					<div class="content">
						<h2 class="content-title">${product.productName }</h2>
						<p>Rp. <fmt:formatNumber value = "${product.price }" 
								type = "currency" pattern="##,##0.00;-##,##0.00"/></p>
					</div>
				</li>
			</c:forEach>
			</ul>
		</div>
	</div>
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