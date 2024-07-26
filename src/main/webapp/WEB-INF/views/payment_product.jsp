<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BuySellZone - Product Details</title>
    <link href="<c:url value='/resources/css/header.css' />" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .full-width-button {
            width: 100%;
        }
        .product-details, .payment-address {
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 5px;
        }
        .product-details img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .card {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            margin: 10px;
            padding: 15px;
            width: 100%;
        }
        .card h3, .card p {
            margin: 10px 0;
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
    
    <div class="container mt-5">
        <h2 class="mb-4" align="center">Product Details and Payment Address</h2>
        <div class="row">
            <!-- Left Side: Payment Address -->
            <div class="col-md-6 mb-3">
                <div class="payment-address">
                    <h3>Payment Address</h3>
                    <form action="success_link">
                        <div class="mb-3">
                            <label for="plotNo" class="form-label">Ploat No & Street :</label>
                            <textarea class="form-control" id="plotNo" name="plotNo" rows="1"></textarea>
                            <label for="District" class="form-label">District :</label>
                            <textarea class="form-control" id="District" name="Street" rows="1"></textarea>
                            <label for="State" class="form-label">State :</label>
                            <textarea class="form-control" id=""State"" name="State" rows="1"></textarea>
                            <label for="pincode" class="form-label">Pin Code :</label>
                            <textarea class="form-control" id="pincode" name="pincode" rows="1"></textarea>
                            <label for="mobNo" class="form-label">Mob No :</label>
                            <textarea class="form-control" id="mobNo" name="mobNo" rows="1"></textarea><br><br>
                            
                           <div class="mb-3">
                            	<label for="quantity" class="form-label"><h3>Purchased Quantity</h3></label>
                            	<input type="number" class="form-control" id="quantity" name="quantity" min="1" value="1">
                        	</div>   <br><br>
                        	                        
                            <div class="mb-3">
                            	<label class="form-label"><h2>Payment Mode<h2></h2></label><br>
                            	<input type="radio" id="cod" name="paymentMode" value="COD">
                            	<label for="cod">Cash on Delivery</label>&emsp;&emsp;&emsp;&emsp;
                            	<input type="radio" id="online" name="paymentMode" value="Online">
                            	<label for="online">Online Mode (coming soon)</label>                            
                        	</div>
                       </div>
                       <div class="mb-3">
                            <input type="submit" class="btn btn-primary full-width-button" value="Purchase">
                        </div>
                        <!-- Add more fields if necessary -->
                    </form>
                </div>
            </div>
            
            <!-- Right Side: Product Details -->
            <div class="col-md-6 mb-3">
                <div class="card">
                   <h2 align="center">Product About</h2>
                   <img src="<c:url value='/resources/photos/${productpay.image}' />" alt="${productpay.image} Image">
                    <p><strong>Mobail Name: ${productpay.name}</p>
                    <p><strong>Company:</strong> ${productpay.company}</p>
                    <p><strong>Type:</strong> ${productpay.type}</p>
                    <p><strong>Price:</strong> ${productpay.price}.00 INR</p>
                    <p><strong>Manufacture Date:</strong> ${productpay.makeDate}</p>
                    <p><strong>Expiry Date:</strong> ${productpay.expityDate}</p>
                    <p><strong>Product Number:</strong> ${productpay.prodectNo}</p>
                    <p><strong>About:</strong></p>
                    <textarea class="form-control" rows="3" readonly>${productpay.about}</textarea>
                </div>
            </div>
        </div>
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
