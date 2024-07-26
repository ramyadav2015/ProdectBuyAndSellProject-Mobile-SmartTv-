<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>BuySellZone - All Products</title>
 
    <link href="<c:url value='/resources/css/homepage.css' />" rel="stylesheet">
   
</head>
<body>
	<!-- inclue navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>
 
    
    <div class="headline">All Products in My Store</div>
    
    
    
     <div class="card-container">

        <c:forEach var="product" items="${prodectData}">
            <div class="card">
                <a href="<c:url value='user-login-form'/> " > <img src="<c:url value='/resources/photos/${product.image}' />" alt="${product.name} Image"></a>
                <h3>${product.name}</h3>
                <p><strong>Company:</strong> ${product.company}</p>
                <p><strong>Type:</strong> ${product.type}</p>
                <p><strong>Price:</strong> ${product.price}.00 INR</p>                
            </div>
        </c:forEach>
    </div>
    
    
    
    
    
  <!-- Include footer page -->
    <jsp:include page="footer.jsp"></jsp:include>   
    
</body>
</html>
