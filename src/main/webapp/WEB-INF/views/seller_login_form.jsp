<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            margin-top: 50px;
            background: rgba(255, 255, 255, .8);;
        }
        .card {
            background-color: rgba(255, 255, 255, .8); /* Fully transparent background */
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border: none; /* Remove border for full transparency */
        }
        .card-header, .card-body {
            background-color: rgba(255, 255, 255, 0); /* Fully transparent background */
        }
        input {
            background: ;
        }
        .link{
        	margin: 20px;
        	text-align: center;
        }
    </style>
   
</head>
<body>


	<!-- inclue navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>
	
	
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="text-center">User Login</h3>
                    </div>
                    <div class="card-body">
                        <form action="seller-login-submit" method="post" >
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </form>
                        <div class="link">
                       	<a href="user-Register-form" >You don't have an account ?SignUp</a>
                       	</div> 
                    </div>
                </div>
            </div>
        </div>
    </div>

	
	 <!-- Include footer page -->
    <jsp:include page="footer.jsp"></jsp:include> 
    
</body>
</html>
