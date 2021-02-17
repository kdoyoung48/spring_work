<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html lang="en">
<head>
<!-- 타이틀  갤러리 메인-->
<title>gallery</title>
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
        <c:forEach var="tmp" items="${list }">
          <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 item" data-aos="fade" data-src="${pageContext.request.contextPath }${tmp.imagePath}" data-sub-html="<h4>${tmp.caption }</h4><p>${tmp.writer }</p>">
            <a href="detail.do?num=${tmp.num }"><img src="${pageContext.request.contextPath }${tmp.imagePath}" alt="IMage" class="img-fluid"></a>
          </div>
          </c:forEach>
		</div><!-- lightgallery -->
		
	</div><!--container-fluid -->
</div><!-- 메인 div site-section -->
 
<!-- footer -->    
<jsp:include page="../include/footer.jsp"></jsp:include>    
</div>

<jsp:include page="../include/resource_script.jsp"></jsp:include>
<script src="${pageContext.request.contextPath }/resources/js/imgLiquid.js"></script>
  <script>
    $(document).ready(function(){
      $('#lightgallery').lightGallery();
    });
    
	// card 이미지의 부모 요소를 선택해서 imgLiquid  동작(jquery plugin 동작) 하기 
	$(".img-wrapper").imgLiquid();
	
	//페이지가 처음 로딩될때 1 page 를 보여주기 때문에 초기값을 1 로 지정한다.
	let currentPage=1; //화면상에 로딩된 최신 페이지번호를 저장할 변수 
	//현재 페이지가 로딩중인지 여부를 저장할 변수
	let isLoading=false;
	
	//웹브라우저의 창을 스크롤 할때 마다 호출되는 함수 등록
	$(window).on("scroll", function(){
		console.log("scorll!");
		//최 하단까지 스크롤 되었는지 조사해 본다.
		//위로 스크롤된 길이
		let scrollTop=$(window).scrollTop();
		//웹브라우저 창의 높이
		let windowHeight=$(window).height();
		//문서 전체의 높이
		let documentHeight=$(document).height();
		//바닥까지 스크롤 되었는지 여부를 알아낸다. 
		let isBottom = scrollTop+windowHeight + 10 >= documentHeight;
		if(isBottom){
			console.log("바닥바닥");
			//만일 현재 마지막 페이지라면
			if(currentPage == ${totalPageCount} || isLoading){
				return; //함수를 여기서 끝낸다. 
			}
			//현재 로딩 중이라고 표시한다. 
			isLoading=true;
			//로딩바를 띄우고
			$(".back-drop").show();
			//요청할 페이지 번호를 1 증가 시킨다
			currentPage++;
			//추가로 받아올 페이지를 서버에 ajax 요청을 하고
			$.ajax({
				url:"ajax_page.do",
				method:"GET",
				data:"pageNum="+currentPage, // {pageNum:currentPage} 도 가능
				success:function(data){
					console.log(data);
					//응답된 문자열은 html 형식이다 
					//해당 문자열을 #galleryList div 에 html 로 해석하라고 추가한다.
					$("#lightgallery").append(data);
					//로딩바를 숨긴다
					$(".back-drop").hide();
					//현재 추가된 img 요소의 부모 div 를 선택해서 imgLiquid() 동작하기
					$(".page-"+currentPage).imgLiquid();
					//로딩중이 아니라고 표시한다.
					isLoading=false;
				}
			});
		}
	});

  </script>


</body>
</html>