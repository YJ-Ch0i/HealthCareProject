<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Health with our Care</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta charset="utf-8">
        <meta name="author" content="Roman Kirichik">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <!-- Favicons -->
        <link rel="shortcut icon" href="resources/images/favicon.png">
        <link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="resources/images/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="resources/images/apple-touch-icon-114x114.png">
        <!-- CSS -->
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/style-responsive.css">

        <link rel="stylesheet" href="resources/css/animate.css">
        <link rel="stylesheet" href="resources/css/animations.min.css">
        <link rel="stylesheet" href="resources/css/vertical-rhythm.min.css">
        <link rel="stylesheet" href="resources/css/owl.carousel.css">
        <link rel="stylesheet" href="resources/css/magnific-popup.css">        
        
    </head>
    <body class="appear-animate">
        
        <!-- Page Loader -->        
        <div class="page-loader">
            <b class="spinner">Loading...</b>
        </div>
        <!-- End Page Loader -->
        
        <!-- Page Wrap -->
        <div class="page" id="top">
            
            <!-- Header -->
            <%@include file="common/header.jsp"%>
            <!-- Header end -->
            
            <!-- Home Section -->
            <section class="page-section bg-dark-alfa-90" data-background="/resources/images/pattern-bg-1.jpg">
                <div class="container relative pt-40">
                    
                    <div class="align-center">
                        
                        <div class="big-icon">
                            <i class="fa fa-usd"></i>
                        </div>
                        
                        <h3 class="section-title">LogIn</h3>
                        
                        <div class="section-heading">Welcome To HealthCare Web</div>
                        
                    </div>
                    
                </div>
            </section>
            <!-- End Home Section -->
            
            <!-- Section -->
            <section class="page-section">
                <div class="container">
                    
                    <!-- Login option -->
                    
                    <div class="row">

					<div class="col-sm-6 mb-xs-40">

						<!-- Toggle -->
						<dl class="toggle">
							<dt>
								<a href="">LogIn</a>
							</dt>
							<dd>
								<form method="post" id="form" role="form">

									<div class="mb-20 mb-md-10">
										<!-- Name -->
										<input type="text" name="adId" id="adId"
											class="input-md form-control" placeholder="아이디"
											maxlength="100" required>
									</div>

									<div class="mb-20 mb-md-10">
										<!-- Password -->
										<input type="password" name="adPass" id="adPass"
											class="input-md form-control" placeholder="비밀번호"
											maxlength="100" required>
									</div>
									<div class="btn-circle_change_location">
										<input type="button" id="logBtn" class="btn btn-mod" value="로그인"> &nbsp;
										<a href="/trainerRegist" class="btn btn-mod">회원가입</a>
									</div>
								</form>
								
							</dd>

						</dl>
						<!-- End Toggle -->
					</div>
					<!-- End Col -->
				</div>
                    
                    <!-- Login option end -->
                    
                </div>
            </section>
            <!-- End Section -->
            
            <hr />
            
            <!-- Foter -->
            <%@include file="common/footer.jsp" %>
            <!-- End Foter -->
            
            
        </div>
        <!-- End Page Wrap -->

        <!-- JS -->
        <script type="text/javascript" src="resources/js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="resources/js/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>       
        <script type="text/javascript" src="resources/js/SmoothScroll.js"></script> 
        <script type="text/javascript" src="resources/js/jquery.scrollTo.min.js"></script>
        <script type="text/javascript" src="resources/js/jquery.localScroll.min.js"></script>
        <script type="text/javascript" src="resources/js/jquery.ba-hashchange.min.js"></script>
        <script type="text/javascript" src="resources/js/jquery.viewport.mini.js"></script>
        <script type="text/javascript" src="resources/js/jquery.countTo.js"></script>
        <script type="text/javascript" src="resources/js/jquery.appear.js"></script>
        <script type="text/javascript" src="resources/js/jquery.sticky.js"></script>
        <script type="text/javascript" src="resources/js/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="resources/js/jquery.fitvids.js"></script>
        <script type="text/javascript" src="resources/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="resources/js/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="resources/js/imagesloaded.pkgd.min.js"></script>
        <script type="text/javascript" src="resources/js/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="resources/js/all.js"></script>
        <script type="text/javascript" src="resources/js/contact-form.js"></script>
        <script type="text/javascript" src="resources/js/animations.min.js"></script>
        <script type="text/javascript" src="resources/js/ajax/loginAjax.js"></script>
        <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
        
    </body>
</html>
