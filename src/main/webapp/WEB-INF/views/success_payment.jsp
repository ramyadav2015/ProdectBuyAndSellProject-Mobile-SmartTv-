<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Include after login navbar -->
    <jsp:include page="navbar.jsp"></jsp:include>
    
   <div> 
    	<h2>Mobail Name: ${productpay.name} is purchase successfully</h2>
    	<h2>Your Purchase Product Deleverd Next 7 Days </h2>
   </div>
    
    
    
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
    
    <!-- If session is null, redirect to home page -->
    <c:if test="${empty sessionScope.name}">
        <jsp:forward page="home.jsp" />
    </c:if>
    
    <!-- Include footer page -->
    <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>