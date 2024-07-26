<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BuySellZone Footer</title>
    <link href="<c:url value='/resources/css/footer.css' />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <style>
    


.footer {
    background: rgba(0, 31, 63, 0.8); 
    color: #fff;
    padding: 40px 0;
    position: relative;
    width: 100%;
    bottom: 0;
    font-size: 14px;
    margin-top: 5%;
}

.footer h2, .footer h3 {
    color: #f9f9f9;
    margin-bottom: 20px;
}

.footer a {
    color: #f9f9f9;
    text-decoration: none;
    margin: 0 10px;
}

.footer a:hover {
    color: #ddd;
}

.footer .footer-content {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    padding: 20px;
}

.footer .footer-section {
    margin: 20px 0;
    width: 80%;
}

.footer .socials a {
    font-size: 18px;
    margin: 0 10px;
    color: #fff;
    transition: color 0.3s;
}

.footer .socials a:hover {
    color: #ddd;
}

.footer .contact p {
    margin: 5px 0;
}

.footer-bottom {
    text-align: center;
    padding: 20px;
    background: #222;
    width: 100%;
    border-top: 10px solid #444;
}

@media (min-width: 768px) {
    .footer .footer-content {
        flex-direction: row;
        justify-content: space-around;
        align-items: flex-start;
        text-align: left;
    }

    .footer .footer-section {
        width: 30%;
    }
}
    
    
    </style>
</head>
<body>
    <!-- Footer -->
    <footer class="footer">
        <div class="footer-content">
            <div class="footer-section about">
                <h2>BuySellZone</h2>
                <p>Buy and sell products with ease on BuySellZone. Your trusted marketplace for quality goods.</p>
                <div class="socials">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
            <div class="footer-section details">
                <h3>Project Maker</h3>
                <p>Ramkishore</p>
                <h3>Assistant Maker</h3>
                <p>Dheeraj & Deelip</p>
            </div>
            <div class="footer-section contact">
                <h3>Contact Us</h3>
                <p>Email: support@buysellzone.com</p>
                <p>Phone: +123-456-7890</p>
            </div>
        </div>
        <div class="footer-bottom">
            &copy; 2024 BuySellZone | Designed for both mobile and smart TV
        </div>
    </footer>
</body>
</html>
