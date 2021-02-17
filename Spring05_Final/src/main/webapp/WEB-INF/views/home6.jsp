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
<style>
	#div_wrapper{
		overflow: hidden;
		display: flex;
		align-items: center;
		justify-content: center;		
		height: 500px;
		
	}
	#img_wrapper{				
		 
   		 

	}
	
</style>
<jsp:include page="include/resource2.jsp"></jsp:include>
</head>
<body>
<div class="site-wrap">

	<!-- 모바일 메뉴 -->
	<div class="site-mobile-menu">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
			  <span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div><!-- div class="site-mobile-menu" -->

	<!-- 네비바, 헤더 -->
	<jsp:include page="include/navbar2.jsp"></jsp:include>	

	<!--메인 -->
	<div class="container-fluid" data-aos="fade" data-aos-delay="500">
		<div class="row">
	
			<!--메인 그림 메뉴 -->     
			<div id="div_wrapper" class="col-lg-4"><!-- 사이즈 조절가능 2,4,8-->
				<div class="image-wrap-2">
					<div class="image-info">
						<h2 class="mb-3">menu1</h2>
						<a href="#" class="btn btn-outline-white py-2 px-4">More Photos</a>
					</div>
					<img id="img_wrapper" src="${pageContext.request.contextPath }/resources/images/italia.jpg" alt="Image" class="img-fluid">
				</div>
			</div>   
			
			<div id="div_wrapper" class="col-lg-4"><!-- 사이즈 조절가능 2,4,8-->
				<div class="image-wrap-2">
					<div class="image-info">
						<h2 class="mb-3">menu1</h2>
						<a href="#" class="btn btn-outline-white py-2 px-4">More Photos</a>
					</div>
					<img id="img_wrapper" src="${pageContext.request.contextPath }/resources/images/travel2.jpg" alt="Image" class="img-fluid">
				</div>
			</div> 
			
			<div id="div_wrapper" class="col-lg-4"><!-- 사이즈 조절가능 2,4,8-->
				<div class="image-wrap-2">
					<div class="image-info">
						<h2 class="mb-3">menu1</h2>
						<a href="#" class="btn btn-outline-white py-2 px-4">More Photos</a>
					</div>
					<img id="img_wrapper" src="${pageContext.request.contextPath }/resources/images/seoul.jpg" alt="Image" class="img-fluid">
				</div>
			</div> 
			<!--메인 그림 메뉴 --> 
			     
		</div> <!-- div row -->
	</div><!-- 메인 --> 
	
	
	<!-- footer -->    
	<jsp:include page="include/footer.jsp"></jsp:include> 
	
</div><!-- div class="site-wrap" -->

<!-- script -->
<jsp:include page="include/resource_script.jsp"></jsp:include>
<script>
   $(document).ready(function(){
     $('#lightgallery').lightGallery();
   });
</script>
</body>
</html>
