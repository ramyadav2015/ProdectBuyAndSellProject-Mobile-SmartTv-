<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Include after login navbar -->
    <jsp:include page="navbar.jsp"></jsp:include>
    <h1 align="center">This is Error Page</h1>
	<img src="<c:url value='/resources/photos/error.jpg' />" alt="error.Image">
	
	

 	<!-- Include footer page -->
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>