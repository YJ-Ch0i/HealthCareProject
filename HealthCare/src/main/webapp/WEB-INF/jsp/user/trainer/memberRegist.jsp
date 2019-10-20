<%@page import="com.example.health.web.dto.user.TrainerDto"%>
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
        <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="../../resources/css/style.css">
        <link rel="stylesheet" href="../../resources/css/style-responsive.css">                                     
        <link rel="stylesheet" href="../../resources/css/animate.css">
        <link rel="stylesheet" href="../../resources/css/animations.min.css">
        <link rel="stylesheet" href="../../resources/css/vertical-rhythm.min.css">
        <link rel="stylesheet" href="../../resources/css/owl.carousel.css">
        <link rel="stylesheet" href="../../resources/css/magnific-popup.css">        
        
        <% 
        System.out.println("진입");
        TrainerDto trSession = (TrainerDto)session.getAttribute("loginInfo");

        if(trSession == null){ %>
			<script type="text/javascript">
				alert("잘못된 접근입니다. 로그인을 해 주세요");
				location.href="/main";
			</script>
	
		<% } %>
        
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
            <section class="page-section bg-dark-alfa-90" data-background="../../resources/images/pattern-bg-1.jpg">
                <div class="container relative pt-40">
                    
                    <div class="align-center">
                        
                        <div class="big-icon">
                            <i class="fa fa-usd"></i>
                        </div>
                        
                        <h3 class="section-title">Member Register</h3>
                        
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

						<form method="post" id="registerForm" role="form">

							<div class="mb-20 mb-md-10">
								<!-- Name -->
								<label>회원 이름</label>
								<input type="text" name="mebermName" id="memberName"
									class="input-md form-control" placeholder="이름"
									maxlength="100" required>
							</div>

							<div class="mb-20 mb-md-10">
								<!-- Phone -->
								<label>회원 전화번호</label>
								<input type="tel" name="memberPhone" id="memberPhone"
									class="input-md form-control" placeholder="-를 제외한 11자리 전화번호"
									maxlength="11" required>
							</div>
							
							<div class="mb-20 mb-md-10">
								<!-- Registered date -->
								<label>회원 등록일</label>
								<input type="date" name="enrollFr" id="enrollFr"
									class="form-control" required>
							</div>
							<div class="mb-20 mb-md-10">
								<!-- end date -->
								<label>회원 만료일</label>
								<input type="date" name="enrollTo" id="enrollTo"
									class="form-control" required>
							</div>
							
							<div class="mb-20 mb-md-10">
								<!-- PT Select -->
								<label>Personal Training</label>
								<select class="form-control" id="isTraining">
									<option value=-1 selected>---PT적용 선택---</option>
                                       <option value=1>YES</option>
                                       <option value=2>NO</option>	                                        
                                  	</select>
							</div>
							
							<div class="mb-20 mb-md-10" id="ptOptions" style="display:none">
								<!-- PT options -->
								<label>PT 과정</label>
								<select class="form-control" id="ptList">
                                       <option value=1>One</option>
                                       <option value=2>Two</option>                                      
                                  	</select>
							</div>
							
							<div class="mb-20 mb-md-10" id="trList" style="display:none">
								<!-- PT trainer -->
								<label>담당 트레이너</label>
								<select class="form-control" id="trainerList">
                                       <option value=1>One</option>
                                       <option value=2>Two</option>                                       
                                  	</select>
							</div>
							
							<div class="mb-20 mb-md-10">
								<!-- PT trainer -->
								<label>수정일</label>
								${nowDate}
								<input type="hidden" id="lastDate" name="lastDate" value="${nowDate}">
								<input type="hidden" id="changeUser" name="changeUser" value="<%=trSession.getUserSeq()%>">
							</div>

							<div class="btn-circle_change_location">
								<input type="button" id="registerBtn" class="btn btn-mod" value="회원 등록"> &nbsp;							
							</div>
						</form>
					</div>
					<!-- End Col -->
				</div>
                    
                    <!-- Login option end -->
                    
                </div>
            </section>
            <!-- End Section -->
            
            <hr />
            
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
        <script type="text/javascript" src="../../resources/js/ajax/registAjax.js"></script>
        <script type="text/javascript" src="../../resources/js/members/memberFunctions.js"></script>
        <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
        
    </body>
</html>
