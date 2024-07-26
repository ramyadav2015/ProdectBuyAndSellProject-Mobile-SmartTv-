<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BuySellZone - All Products</title>
    <link href="<c:url value='/resources/css/header.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/css/table.css' />" rel="stylesheet">
    
    
    <script type="text/javascript">
        function invalidateSession() {
            window.location.href = '<c:url value="/logout" />';
        }
    </script>
</head>
<body>
    <!-- Include admin navbar -->
    <jsp:include page="Admin_nav_bar.jsp"></jsp:include>

    <div class="headline">All Products in My Store</div>

    <!-- Check if session is not null and execute code -->
    <c:if test="${not empty sessionScope.name}">
        <div class="card">
            <table>
                <tr>
                    <th>Sr. No.</th>
                    <th>Name</th>
                    <th>Company</th>
                    <th>Type</th>
                    <th>Product Price</th>
                    <th>Image</th>
                    <th>Make Date</th>
                    <th>Expiry Date</th>
                    <th>Serial No.</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <c:forEach var="product" items="${prodectData}">
                    <tr>
                        <td>${product.srNo}</td>
                        <td>${product.name}</td>
                        <td>${product.company}</td>
                        <td>${product.type}</td>
                        <td>${product.price}</td>
                        <td><img src="<c:url value='/resources/photos/${product.image}' />" alt="Product Image" width="200"></td>
                        <td>${product.makeDate}</td>
                        <td>${product.expityDate}</td>
                        <td>${product.prodectNo}</td>
                        <td><a href="<c:url value='editProduct' />">
                                <img src="<c:url value='/resources/photos/editicon.png' />" alt="Edit" width="50"></a></td>
                        <td><a href="<c:url value='deleteProduct/${product.srNo}' />">
                                <img src="<c:url value='/resources/photos/deleteicons.png' />" alt="Delete" width="50"></a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
     </c:if>

    <!-- If session is null, redirect to home page -->
    <c:if test="${empty sessionScope.name}">
        <jsp:forward page="home.jsp" />
    </c:if>
    
    
     <!-- Include footer page -->
    <jsp:include page="footer.jsp"></jsp:include> 
    
</body>
</html>
