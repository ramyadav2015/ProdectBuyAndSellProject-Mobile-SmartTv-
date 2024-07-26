<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Alert Example</title>
    <script type="text/javascript">
        // Function to display alert message
        function showAlert(message) {
            alert(message);
        }
    </script>
</head>
<body>
<%
    // Retrieve the alert message set by the controller
    String alertMessage = (String) request.getAttribute("alertMessage");
    if (alertMessage != null && !alertMessage.isEmpty()) {
%>
    <script type="text/javascript">
        // Call the function to display the alert message
        showAlert("<%= alertMessage %>");
    </script>
<%
    }
%>
</body>
</html>
