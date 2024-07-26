<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BuySellZone - All Products</title>
    <link href="<c:url value='/resources/css/header.css' />" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .full-width-button {
            width: 100%;
        }
    </style>
    <script type="text/javascript">
        function invalidateSession() {
            window.location.href = '<c:url value="/logout" />';
        }
    </script>
</head>
<body>
    <!-- Include after logging navbar -->
    <jsp:include page="after_login_navbar.jsp"></jsp:include>

    <div class="container mt-5">
        <h2 class="mb-4" align="center">Product Details Form</h2>
        <div class="card">
            <div class="card-body">
                <form action="sell_submit" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <!-- First Column -->
                        <div class="col-md-6 mb-3">
                            <label for="name" class="form-label"> Product Name</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="company" class="form-label"> Product Company</label>
                            <input type="text" class="form-control" id="company" name="company">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="type" class="form-label"> Product Type</label>
                            <input type="text" class="form-control" id="type" name="type">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="price" class="form-label"> Product Price</label>
                            <input type="text" class="form-control" id="price" name="price">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="image" class="form-label">Product Image URL</label>
                            <input type="file" class="form-control" id="image" name="imageFile">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="makeDate" class="form-label"> Product Manufacture Date</label>
                            <input type="date" class="form-control" id="makeDate" name="makeDate">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="prodectNo" class="form-label">Product Number</label>
                            <input type="text" class="form-control" id="prodectNo" name="prodectNo">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="expityDate" class="form-label">Product Expiry Date</label>
                            <input type="date" class="form-control" id="expityDate" name="expityDate">
                        </div>
                        
                        <div class="col-md-6 mb-3">
                            <label for="about" class="form-label">Product About</label>
                             <textarea class="form-control" id="about" name="about" rows="4"></textarea>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary full-width-button">Submit</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>

    <!-- Include footer page -->
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
