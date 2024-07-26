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
            <a href="home">Home</a>
            <a href="#menu">Menu</a>
            <a href="user-login-form">Buy</a>
            <a href="seller-login-form">Sell</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
            <a href="#help">Help</a>
        </div>
        <div class="nav-right">
            <a href="user-login-form">Login</a>
            <a href="user-Register-forms">Sign Up</a>
            <a href="admin_login_form">Admin Login</a>
        </div>
    </div>
    
</body>
</html>
