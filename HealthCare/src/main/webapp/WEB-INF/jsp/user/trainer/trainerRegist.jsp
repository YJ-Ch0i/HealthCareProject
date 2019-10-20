<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
        <title>Pricing | BigStream</title>
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
        <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="../../resources/css/style.css">
        <link rel="stylesheet" href="../../resources/css/style-responsive.css">
        <link rel="stylesheet" href="../../resources/css/animate.css">
        <link rel="stylesheet" href="../../resources/css/animations.min.css">
        <link rel="stylesheet" href="../../resources/css/vertical-rhythm.min.css">
        <link rel="stylesheet" href="../../resources/css/owl.carousel.css">
        <link rel="stylesheet" href="../../resources/css/magnific-popup.css">
        
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
            <%@include file="../../common/header.jsp"%>
            <!-- Header end -->

            <!-- Home Section -->
            <section class="page-section bg-dark-alfa-90" data-background="/resources/images/pattern-bg-1.jpg">
                <div class="container relative pt-40">
                    
                    <div class="align-center">
                        
                        <div class="big-icon">
                            <i class="fa fa-usd"></i>
                        </div>
                        
                        <h3 class="section-title">Register</h3>
                        
                        <div class="section-heading">Welcome To HealthCare Web</div>
                        
                    </div>
                    
                </div>
            </section>
            <!-- End Home Section -->
            
            <!-- Section -->
            <section class="page-section">
                <div class="container">
                    
                    <!-- Trainer Register option -->                                    
					<div class="row">
					
						<div class="col-sm-4 mb-40">
	
							<form method="post" action="#" id="form"
								role="form" class="form">
		
								<div class="mb-20 mb-md-10">
									
									<label>ID</label>
									<input type="text" name="trId" id="trId" style="text-transform: lowercase"
										class="form-control" placeholder="사용하실 아이디를 대문자가 없는 20자 이내로 입력 해 주세요" maxlength="100" required>
										<hr>
								</div>
		
								<div class="mb-20 mb-md-10">
									<label>비밀번호</label>
									<input type="password" name="trPass" id="trPass"
										class="form-control" placeholder="숫자/대문자/소문자/특수문자가 포함된 8자리 이상 비밀번호"
										maxlength="100" required>
										<hr>
								</div>
		
								<div class="mb-20 mb-md-10">
									<label>비밀번호 확인</label>								
									<input type="password" name="rePass" id="rePass"
										class="form-control" placeholder="비밀번호 재입력" maxlength="100" required>
										<hr>
								</div>														

								<div class="mb-20 mb-md-10">
									<label>이름</label>
									<input type="text" name="trName" id="trName"
										class="form-control" placeholder="이름을 입력 해 주세요" maxlength="100" required>
										<hr>										
								</div>
								<div class="mb-20 mb-md-10">
									<label>휴대폰</label>								
									<input type="text" name="trPhone" id="trPhone"
										class="form-control" placeholder="휴대폰 번호를  - 없이 입력 해 주세요" maxlength="11" required>
										<hr>
								</div>
								
								<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
								<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
								<div class="alert alert-danger" id="alert-danger-pass">비밀번호는 8자리 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.</div>								
								
								<div class="mb-20 mb-md-10">								
									<input type="submit" id="submit" class="btn btn-mod" value="트레이너 등록">
								</div>
							</form>
							
							
						</div>
					</div>
					<!-- End Trainer Register option -->
                    
                </div>
            </section>
            <!-- End Section -->
                      
            <!-- Foter -->
            <%@include file="../../common/footer.jsp" %>
            <!-- End Foter -->
                        
        </div>
        <!-- End Page Wrap -->
        
        
        
        
        <!-- JS -->
        <script type="text/javascript" src="../../resources/js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="../../resources/js/bootstrap.min.js"></script>       
        <script type="text/javascript" src="../../resources/js/SmoothScroll.js"></script> 
        <script type="text/javascript" src="../../resources/js/jquery.scrollTo.min.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.localScroll.min.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.ba-hashchange.min.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.viewport.mini.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.countTo.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.appear.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.sticky.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.fitvids.js"></script>
        <script type="text/javascript" src="../../resources/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="../../resources/js/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="../../resources/js/imagesloaded.pkgd.min.js"></script>
        <script type="text/javascript" src="../../resources/js/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="../../resources/js/all.js"></script>
        <script type="text/javascript" src="../../resources/js/contact-form.js"></script>
        <script type="text/javascript" src="../../resources/js/animations.min.js"></script>
        <script type="text/javascript" src="../../resources/js/members/memberFunctions.js"></script>
        <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
        
    </body>
</html>
