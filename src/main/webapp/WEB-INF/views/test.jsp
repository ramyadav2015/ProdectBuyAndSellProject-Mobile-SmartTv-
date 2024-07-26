<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/*----------------------------------------*/
.footer-section {
  background: #010717;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center center;
}

.footer-logo {
  max-width: 170px;
}

.footer-copyright-area {
  border-top: 1px solid #1b202f;
  padding-top: 15px;
  padding-bottom: 30px;
}

.copyright-text {
  margin-top: 15px;
}

@media only screen and (max-width: 767px) {
  .copyright-text {
    text-align: center;
  }
}

.copyright-text p {
  font-size: 14px;
  color: #c4c5c7;
}

.footer-section-02 {
  background: #000000;
}

.footer-section-02 .footer-widget-wrap {
  padding-top: 130px;
}

.footer-section-03 .footer-widget-wrap {
  padding-top: 140px;
}

.footer-section-04 .footer-copyright-area {
  border-top: 1px solid #e0e0e0;
}

.footer-section-04 .copyright-text p {
  font-size: 14px;
  color: #0e0e0e;
}

.progress-wrap {
  position: fixed;
  right: 50px;
  bottom: 50px;
  height: 45px;
  width: 45px;
  cursor: pointer;
  display: block;
  border-radius: 50px;
  box-shadow: inset 0 0 0 2px rgba(0, 93, 224, 0.2);
  opacity: 0;
  visibility: hidden;
  transform: translateX(130%);
  z-index: 99;
  transition: all 200ms linear;
}

.progress-wrap::after {
  position: absolute;
  content: "\f108";
  font-family: flaticon !important;
  text-align: center;
  line-height: 45px;
  font-size: 18px;
  color: #086ad8;
  left: 0;
  top: 0;
  height: 46px;
  width: 46px;
  transform: rotate(90deg);
  cursor: pointer;
  display: block;
  z-index: 1;
}

.progress-wrap svg path {
  fill: none;
}

.progress-wrap svg.progress-circle path {
  stroke: #086ad8;
  stroke-width: 4;
  box-sizing: border-box;
}

.progress-wrap.active-progress {
  opacity: 1;
  visibility: visible;
  transform: translateX(0);
}

.progress-wrap-3 {
  box-shadow: inset 0 0 0 2px rgba(255, 85, 56, 0.2);
}

.progress-wrap-3::after {
  color: #ff5538;
}

.progress-wrap-3 svg.progress-circle path {
  stroke: #ff5538;
}
	
</style>
</head>
<body>


  <!-- Footer Section Start -->
        <div class="section footer-section" style="background-image: url(assets/images/bg/footer-bg.jpg);">

            <div class="container">
                <!-- Footer Widget Wrap Start -->
                <div class="footer-widget-wrap">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <!-- Footer Widget Start -->
                            <div class="footer-widget-about">
                                <a class="footer-logo" href="#"><img src="./logo/logo-no-background.png" alt="Logo"></a>
                                <p>TCG Finance Ltd has over 23 years since incorporation actively engaged in International Funding, specialized in Trade Finance, and Asset Base Lending for companies.</p>
                                <div class="footer-social">
                                    <ul class="social">
                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Footer Widget End -->
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <!-- Footer Widget Start -->
                            <div class="footer-widget">
                                <h4 class="footer-widget-title">Useful Links</h4>

                                <div class="widget-link">
                                    <ul class="link">
                                        <li><a href="#">Terms &amp; Conditions</a></li>
                                        <li><a href="#">About Bank</a></li>
                                        <li><a href="#">Payment Gatway</a></li>
                                        <li><a href="#">Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Footer Widget End -->
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <!-- Footer Widget Start -->
                            <div class="footer-widget">
                                <h4 class="footer-widget-title">Our Services</h4>

                                <div class="widget-link">
                                    <ul class="link">
                                        <li><a href="#">Payment and Remittance Services</a></li>
                                        <li><a href="#">Overdraft</a></li>
                                        <li><a href="#"> Lockers</a></li>
                                        <li><a href="#">Wealth Management</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Footer Widget End -->
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <!-- Footer Widget Start -->
                            <div class="footer-widget">
                                <h4 class="footer-widget-title">Contact Information</h4>

                                <div class="widget-info">
                                    <ul>
                                        <li>
                                            <div class="info-icon">
                                                <i class="flaticon-phone-call"></i>
                                            </div>
                                            <div class="info-text">
                                                <span><a href="#">+91 7878181641</a></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-icon">
                                                <i class="far fa-envelope-open"></i>
                                            </div>
                                            <div class="info-text">
                                                <span><a href="#">yk543852@gmail.com</a></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-icon">
                                                <i class="flaticon-pin"></i>
                                            </div>
                                            <div class="info-text">
                                                <span>Police Head Quarter jaipur, Rajasthan</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Footer Widget End -->
                        </div>
                    </div>
                </div>
                <!-- Footer Widget Wrap End -->
            </div>

            <!-- Footer Copyright Start -->
            <div class="footer-copyright-area">
                <div class="container">
                    <div class="footer-copyright-wrap">
                        <div class="row align-items-center">
                            <div class="col-lg-12">
                                <!-- Footer Copyright Text Start -->
                                <div class="copyright-text text-center">
                                    <p>© Copyrights 2024 TCG Bank All rights reserved. </p>
                                </div>
                                <!-- Footer Copyright Text End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer Copyright End -->
        </div>
        <!-- Footer Section End -->
        

</body>
</html>