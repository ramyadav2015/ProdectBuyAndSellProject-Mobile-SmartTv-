<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BuySellZone - All Products</title>
<link href="<c:url value='/resources/css/homepage.css' />" rel="stylesheet">

 
<style>
    .card .add-card {
        width: 45%;
        display: inline-block;
        text-align: left;
    }
    .card .price {
        width: 30%;
        display: inline-block;
        text-align: right;
        position: absolute;
        right: 16px;
        bottom: 0%;
    }
    .card .add-card img,
    .card .price img {
        cursor: pointer;
        border-radius: 5px;
        transition: transform 0.2s;
    }
    .card .add-card img:hover,
    .card .price img:hover {
        transform: scale(1.1);
    }
</style>

	<script type="text/javascript">
        function invalidateSession() {
            window.location.href = '<c:url value="/logout" />';
        }
    </script>

</head>
<body>
    
    <!-- Include after login navbar -->
    <jsp:include page="after_login_navbar.jsp"></jsp:include> 

    <div class="headline">All Products in My Store</div>

    <div class="card-container">
        <c:forEach var="product" items="${prodectData}">
            <div class="card">
                <img src="<c:url value='/resources/photos/${product.image}' />" alt="${product.name} Image">
                <h3>${product.name}</h3>
                <p><strong>Company:</strong> ${product.company}</p>
                <p><strong>Type:</strong> ${product.type}</p>
                <p><strong>Price:</strong> ${product.price}.00 INR</p>
                <div class="add-card">
                    <a href="<c:url value='cartPage/'/>${product.srNo} ">
                        <img src="<c:url value='/resources/photos/cart-trolley.png' />" alt="Add Cart" width="50">
                    </a>
                </div>
                <div class="price">
                    <a href="<c:url value='payment/'/>${product.srNo}">
                        <img src="<c:url value='/resources/photos/Buynow.png' />" alt="Buy" width="50">
                    </a>
                </div>            
            </div>
        </c:forEach>
    </div>
    
    <!-- If session is null, redirect to home page -->
    <c:if test="${empty sessionScope.name}">
        <jsp:forward page="home.jsp" />
    </c:if>
    
     <!-- Include footer page -->
    <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>
