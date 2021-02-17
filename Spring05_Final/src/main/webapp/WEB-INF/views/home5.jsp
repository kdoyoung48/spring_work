<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- 타이틀 -->
<title>Team4Project</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- css 영역 -->
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@400;700&family=Roboto+Mono:wght@400;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/owl.theme.default.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/lightgallery.min.css">    
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/bootstrap-datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/swiper.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css5/style.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts5/flaticon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts5/icomoon/style.css">

</head>
<body>
<!-- 네비바  -->
<!-- css 모바일 화면  사이드 메뉴  -->
<div class="site-wrap">
	<div class="site-mobile-menu">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
			  <span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
	<div class="site-mobile-menu-body"></div>
	</div>

<!--헤더 -->
<header class="site-navbar py-3" role="banner">

<div class="container-fluid">
	<div class="row align-items-center">
		
		<!-- 왼쪽 상단 타이틀  -->
		<div class="col-6 col-xl-2" data-aos="fade-down">
			<h1 class="mb-0"><a href="home5.do" class="text-white h2 mb-0">Team4Project</a></h1>
		</div>
          
<div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
	
	<!-- 네비바 상단 중앙 -->
	<nav class="site-navigation position-relative text-right text-lg-center" role="navigation">	
		<ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
			
			<!--Home,about us-->
			<li class="active"><a href="home5.do">Home</a></li>
			<li><a href="#">About us</a></li>                
			
			<!--컨텐츠 메뉴-->
			<li class="has-children">
				<a href="#">Contents</a>
				<!--서브 메뉴 1 -->
				<ul class="dropdown">
					<li><a href="#">서브 메뉴1</a></li>
					<li><a href="#">서브 메뉴2</a></li>
					<li><a href="${pageContext.request.contextPath }/gallery/list5.do">gallery</a></li>
					<li><a href="#">서브 메뉴4</a></li>
					<li><a href="#">서브 메뉴5</a></li>
					<!--서브 메뉴 2 -->
					<li class="has-children">
						<a href="#">서브메뉴2</a>
						<ul class="dropdown">
							<li><a href="#">서브 메뉴1</a></li>
							<li><a href="#">서브 메뉴2</a></li>
							<li><a href="#">서브 메뉴3</a></li>
						</ul>
					</li><!-- 서브메뉴 2-->
				</ul><!-- 서브메뉴 1 -->
			</li><!--컨텐츠-->
			
			<!--예약발권 메뉴-->
			<li class="has-children">
				<a href="#">Reservation</a>
				<!--서브 메뉴 1 -->
				<ul class="dropdown">
					<li><a href="#">서브 메뉴1</a></li>
					<li><a href="#">서브 메뉴2</a></li>
					<li><a href="#">서브 메뉴3</a></li>				
				</ul><!-- 서브메뉴 1 -->
			</li><!--예약발권-->
			
			<!--서비스 ,코로나 메뉴 -->
			<li><a href="#">Service</a></li>
			<li><a href="#">corona</a></li>
			
			<!--로그인 버튼 -->
			<li>
				<a href="${pageContext.request.contextPath }/users/loginform.do" 
					class="btn btn-outline-white py-2 px-4">Log in</a>
			</li><!-- 로그인 -->
		</ul><!--ul 사이트메뉴 -->
	</nav>	<!-- 네비바 -->
</div>

<!--오른쪽 사이드 바 메뉴 -->
<div class="col-6 col-xl-2 text-right" data-aos="fade-down">
	<div class="d-none d-xl-inline-block">
		<ul class="site-menu js-clone-nav ml-auto list-unstyled d-flex text-right mb-0" data-class="social">
	</ul>
</div>

<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;">
	<a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a>
</div>
</div>
</div>
</div>    
</header> <!--헤더 -->

<!--메인 -->
<div class="container-fluid" data-aos="fade" data-aos-delay="500">
	<div class="row">

		<!--메인 그림 메뉴 -->     
		<div class="col-lg-4"><!-- 사이즈 조절가능 2,4,8-->
			<div class="image-wrap-2">
				<div class="image-info">
					<h2 class="mb-3">menu1</h2>
					<a href="#" class="btn btn-outline-white py-2 px-4">More Photos</a>
				</div>
				<img src="${pageContext.request.contextPath }/resources/images5/img_2.jpg" alt="Image" class="img-fluid">
			</div>
		</div>   
		     
	</div> <!-- div row -->
</div> <!-- div container-fluid -->
	
<!-- footer  -->
<div class="footer py-4">
	<div class="container-fluid text-center">
		<p>
		<!--css 디자인 출처-->
		Copyright by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
		</p>
	</div>
</div>

    

    
    
  </div>

  <script src="${pageContext.request.contextPath }/resources/js5/jquery-3.3.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/jquery-ui.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/jquery.countdown.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/bootstrap-datepicker.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/swiper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/aos.js"></script>

  <script src="${pageContext.request.contextPath }/resources/js5/picturefill.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/lightgallery-all.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js5/jquery.mousewheel.min.js"></script>

  <script src="${pageContext.request.contextPath }/resources/js5/main.js"></script>
  
  <script>
    $(document).ready(function(){
      $('#lightgallery').lightGallery();
    });
  </script>

</body>
</html>
