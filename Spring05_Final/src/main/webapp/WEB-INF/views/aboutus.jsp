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
	#font_1{
		font-family: 'Noto Sans KR', sans-serif;
		font-weight: 200;
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
	<div class="site-section"  data-aos="fade">
      <div class="container-fluid">

        <div class="row justify-content-center">

          <div class="col-md-7">
            <div class="row mb-5">
              <div class="col-12 ">
                <h2 class="site-section-heading text-center">About us</h2>
              </div>
            </div>
          </div>

        </div>
        
        <div class="row mb-5">
          <div class="col-md-8">
            <img src="${pageContext.request.contextPath }/resources/images/seoul2.jpg" alt="Images" class="img-fluid">
          </div>
          <div class="col-md-4 ml-auto">
            <h3 class="text-white">My Mission</h3>
            <p id="font_1">여행을 사랑하고, 기대하는 사람들. 여행이 주는 행복과, 설렘을 온몸으로 느끼고 싶어하는, 그 때의 추억이 담긴 사진 한장으로 수 백 가지 이야기가 나오는, 사람들이 모여 추억을 나누고, 또 다음 여행을 계획하는, </p>
            <p id="font_1">우리는 ooo . - 조그마한 사진으로 일상의 스트레스를 풀 수 있을까요? (오늘의 피로를 풀 수 있을까요 ?) 여기 모여서 (이리와서) 다음 여행 계획 세워보는건 어때요? 여행가기 전까지는 거뜬할 거에요. ooo .</p>
          </div>
        </div>


        <div class="row site-section">
          <div class="col-md-6 col-lg-6 col-xl-4 text-center mb-5">
            <img src="images/person_1.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
            <h2 class="text-black font-weight-light mb-4">Jean Smith</h2>
            <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
            <p>
              <a href="#" class="pl-0 pr-3"><span class="icon-twitter"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
            </p>
          </div>
          <div class="col-md-6 col-lg-6 col-xl-4 text-center mb-5">
            <img src="images/person_2.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
            <h2 class="text-black font-weight-light mb-4">Claire Smith</h2>
            <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
            <p>
              <a href="#" class="pl-0 pr-3"><span class="icon-twitter"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
            </p>
          </div>
          <div class="col-md-6 col-lg-6 col-xl-4 text-center mb-5">
            <img src="images/person_4.jpg" alt="Image" class="img-fluid w-50 rounded-circle mb-4">
            <h2 class="text-black font-weight-light mb-4">John Smith</h2>
            <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur ab quas facilis obcaecati non ea, est odit repellat distinctio incidunt, quia aliquam eveniet quod deleniti impedit sapiente atque tenetur porro?</p>
            <p>
              <a href="#" class="pl-0 pr-3"><span class="icon-twitter"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-facebook"></span></a>
            </p>
          </div>
        </div>
      </div>
    </div> 
	
	
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
