<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html lang="en">
<head>
<!-- 타이틀 -->
<title>Team4Project</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- css 영역 -->
<jsp:include page="../include/resource2.jsp"></jsp:include>
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
	<jsp:include page="../include/navbar2.jsp"></jsp:include>	

<!--갤러리 메인 -->
<div class="site-section"  data-aos="fade">
      <div class="container-fluid">
        
        <div class="row justify-content-center">
          <div class="col-md-7">
            <div class="row mb-5">
              <div class="col-12 ">
                <h2 class="site-section-heading text-center">Travel Gallery</h2>
              </div>
            </div>
          </div>
        </div>
        
        <div class="row" id="lightgallery">
          <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 item" data-aos="fade" data-src="images/big-images/nature_big_1.jpg" data-sub-html="<h4>Fading Light</h4><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor doloremque hic excepturi fugit, sunt impedit fuga tempora, ad amet aliquid?</p>">
            <a href="#"><img src="images/nature_small_1.jpg" alt="IMage" class="img-fluid"></a>
          </div>
		</div><!-- lightgallery -->
		
	</div><!--container-fluid -->
</div><!-- 메인 div site-section -->
 
<!-- footer -->    
<jsp:include page="../include/footer.jsp"></jsp:include>    
</div>

<jsp:include page="../include/resource_script.jsp"></jsp:include>
  <script>
    $(document).ready(function(){
      $('#lightgallery').lightGallery();
    });
  </script>

</body>
</html>