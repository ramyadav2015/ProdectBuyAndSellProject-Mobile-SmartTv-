<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.jdbc.core.JdbcTemplate"%>
<%@page import="com.entity.ProdectBean"%>
<%@page import="com.dao.RowMapperImpProdect"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Cart</title>
   <link href="<c:url value='/resources/css/homepage.css' />" rel="stylesheet">
    
    <style>
        .clearbutton {
  			background-color: #f44336; 
  			border: none;
  			color: white;
  			padding: 15px 32px;
  			text-align: center;
  			text-decoration: none;
  			display: inline-block;
  			font-size: 16px;
  			margin: 4px 2px;
  			cursor: pointer;
        }        
       
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

    <!-- inclue navbar -->
	<jsp:include page="after_login_navbar.jsp"></jsp:include>
 
    
    <div class="headline"><h2>Your Cart</h2></div>
    

    <c:if test="${not empty cart}">
        <!-- Form to clear the cart -->
        <div align="right">
            <a href="<c:url value='clear' />">
                <button class="clearbutton">Clear Cart</button>
            </a>
        </div>
        
        
        
        
        
	
    
    
    
     <div class="card-container">

        <c:forEach var="entry" items="${cart}">
            <div class="card">
                <a href="<c:url value='user-login-form'/> " > <img src="<c:url value='/resources/photos/${entry.value.image}' />" alt="${entry.value.name} Image"></a>
                <h3>${entry.value.name}</h3>
                <p><strong>Company:</strong> ${entry.value.company}</p>
                <p><strong>Type:</strong> ${entry.value.type}</p>
                <p><strong>Price:</strong> ${entry.value.price}.00 INR</p>   
                
                <div class="price">
                    <a href="<c:url value='payment/'/>${entry.value.srNo}">
                        <img src="<c:url value='/resources/photos/Buynow.png' />" alt="Buy" width="50">
                    </a>
             </div>
            <div class="add-card">
                    <a href="<c:url value='remove/'/>${entry.value.srNo} ">
                        <img src="<c:url value='/resources/photos/deleteicons.png' />" alt="Delete Cart" width="50">
                    </a>
            </div>
                                         
          </div>           
                
        </c:forEach>
    </div>
    
    
    </c:if>

    <c:if test="${empty cart}">
        <h2 align="center">Your cart is empty.</h2>
    </c:if>

<!-- If session is null, redirect to home page -->
    <c:if test="${empty sessionScope.name}">
        <jsp:forward page="home.jsp" />
    </c:if>
    
     <!-- Include footer page -->
    <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>
