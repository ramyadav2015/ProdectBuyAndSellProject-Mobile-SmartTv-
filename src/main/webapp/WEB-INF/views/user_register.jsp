<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
        }

        .registration-card {
            background-color: #ffffff; /* White background for the card */
            padding: 20px;
            margin: 50px auto;
            width: 60%;
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .form-row > div {
            flex: 1;
            min-width: 200px;
        }

        /* Form fields styling */
        .registration-card input[type="text"],
        .registration-card input[type="password"],
        .registration-card input[type="email"],
        .registration-card input[type="tel"],
        .registration-card input[type="date"],
        .registration-card select {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        /* Different colors for fields */
        .registration-card input[type="text"]:focus,
        .registration-card input[type="password"]:focus,
        .registration-card input[type="email"]:focus,
        .registration-card input[type="tel"]:focus,
        .registration-card input[type="date"]:focus,
        .registration-card select:focus {
            border: 1px solid #555;
            background-color: #e6f7ff; /* Light blue field background */
        }

        /* Submit button styling */
        .registration-card input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .registration-card input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
	<!-- inclue navbar -->
	<jsp:include page="navbar.jsp"></jsp:include>
	
<div class="registration-card">
    <h2 align="center">User Registration Form</h2>
    <form id="registrationForm" action="user-register-submit">
        <div class="form-row">
            <div>
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
                
                <label for="repassword">Re Password</label>
                <input type="password" id="repassword" name="repassword" required>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
                
                <label for="phone_number">Phone Number</label>
                <input type="tel" id="phone_number" name="phone_number" required>
                
                
            </div>
            <div>
                <label for="first_name">First Name</label>
                <input type="text" id="first_name" name="first_name" required>

                <label for="last_name">Last Name</label>
                <input type="text" id="last_name" name="last_name">

                <label for="address">Address</label>
                <input type="text" id="address" name="address" required>


                <label for="date_of_birth">Date of Birth</label>
                <input type="date" id="date_of_birth" name="date_of_birth" required>

                <label for="gender">Gender</label>
                <select id="gender" name="gender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
        </div>

        <input type="submit" value="Register">
        <p id="errorMsg" class="error"></p>
    </form>
</div>



	<!-- Include footer page -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>
