<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BuySellZone - All Products</title>
<link href="<c:url value='/resources/css/header.css' />" rel="stylesheet">
<link href="<c:url value='/resources/css/table.css' />" rel="stylesheet">

<style>
table td input{
       
        height: 40px;
       
    }    

</style>
<script type="text/javascript">
        function invalidateSession() {
            window.location.href = '<c:url value="/logout" />';
        }
    </script>
 
</head>
<body>
	 <!-- Include after loging navbar -->
    <jsp:include page="after_login_navbar.jsp"></jsp:include>
	
	  <div class="headline">Update All Products in My Store</div>

	 <!-- Check if session is not null and execute code -->
    <c:if test="${not empty sessionScope.name}">
    
	<div class="card">
		<table>
			<tr>
				<th>Sr. No.</th>
				<th>Name</th>
				<th>Company</th>
				<th>Type</th>
				<th>Prodect Price</th>
				<th>Image</th>
				<th>Make Date</th>
				<th>Expiry Date</th>
				<th>Serial No.</th>
				<th>Edit</th>
			</tr>
			<!-- Example row, repeat this block for each product -->
			<tr>
				<c:forEach var="prodect" items="${prodectData }">
					<tr>
						<form action="editItem" method="post" enctype="multipart/form-data">
							<td><input type="text" value="${prodect.srNo }" name="srNo"	readonly="readonly" style="width: 50px;" /></td>
							<td><input type="text" value="${prodect.name }" name="name" /></td>
							<td><input type="text" value="${prodect.company }"name="company" /></td>
							<td><input type="text" value="${prodect.type }" name="type" /></td>
							<td><input type="text" value="${prodect.price }"name="price" style="width: 100px;"/></td>
							<td><input type="hidden" value="${prodect.image }" name="image" />
								<input type="file" name="fileImage" style="width: 125px;" />
							</td>
							<td><input type="text" value="${prodect.makeDate }"name="makeDate" style="width: 125px;"/></td>
							<td><input type="text" value="${prodect.expityDate }"name="expityDate" style="width: 125px;"/></td>
							<td><input type="text" value="${prodect.prodectNo }"name="prodectNo" style="width: 125px;"/></td>
							<td><button type="submit">
									<img src="<c:url value='/resources/photos/editicon.png' />"
										alt="Edit" width="50" />
								</button></td>
						</form>
					</tr>
				</c:forEach>

			</tr>

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
