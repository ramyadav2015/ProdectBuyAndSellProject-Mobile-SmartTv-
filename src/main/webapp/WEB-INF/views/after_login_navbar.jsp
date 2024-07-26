<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BuySellZone - All Products</title>
    <link href="<c:url value='/resources/css/header.css' />" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- JavaScript to handle login forms -->
    
</head>
<body>
    <div class="header">
        <h1>My BuySellZone</h1>
        <p>Welcome to my BuySellZone</p>
    </div>
    
    <div class="nav">
        <div class="nav-left">
            <a href="#menu">Menu</a>
            <a href="user-login-form">Buy</a>
            <a href="seller-login-form">Sell</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
            <a href="#help">Help</a>
        </div>
        <div class="nav-right">
        	
            <a href="#" ><img src="<c:url value='/resources/photos/user_icon.png' />" alt="icon" width="20" height="20">&emsp; Welcome, ${name } </a>
        
          	<a href="cart"><img src="<c:url value='/resources/photos/cart-trolley.png' />" alt="icon" width="40" height="25"></a>
            <a href="logout">Log Out</a>
        </div>
    </div>
    
</body>
</html>
