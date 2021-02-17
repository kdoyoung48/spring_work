
<!DOCTYPE HTML>
<!--
	Radius by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
	<style>
		/* img  가  가운데 정렬 되도록 */
	.back-drop{
		/* 일단 숨겨 놓는다. */
		display:none;
	
		/* 화면 전체를 투명도가 있는 회색으로 덮기 위한  css*/
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background-color: #cecece;
		padding-top: 300px;
		z-index: 10000;
		opacity: 0.5;
		text-align: center;
	}
	
	.back-drop img{
		width: 100px;
		/* rotateAnimation 이라는 키프레임을 2초 동한 일정한 비율로  무한 반복하기 */
		animation: rotateAnimation 2s ease-out infinite;
	}
	</style>
		<title>Radius by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/gallery-main.css" />
	</head>
	<body>
		
		<!-- Main -->
			<div id="main">
				<div class="inner">
					<div class="columns">

						<!-- Column 1 (horizontal, vertical, horizontal, vertical) -->
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/dehwaro.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/travel.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/anthony.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/patrick.jpg" alt="" /></a>
							</div>

						<!-- Column 2 (vertical, horizontal, vertical, horizontal) -->
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/trave4.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/paris1.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/fiona.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/anastase.jpg" alt="" /></a>
							</div>

						<!-- Column 3 (horizontal, vertical, horizontal, vertical) -->
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/pe.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/italia.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/hawaii1.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/travel2.jpg" alt="" /></a>
							</div>

						<!-- Column 4 (vertical, horizontal, vertical, horizontal) -->
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/seoul.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/gal.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/jeju.jpg" alt="" /></a>
							</div>
							<div class="image fit">
								<a href="detail1.html"><img src="${pageContext.request.contextPath }/resources/images/hawaii2.jpg" alt="" /></a>
							</div>

					</div>
				</div>
			</div>
<div class="back-drop">
	<img src="${pageContext.request.contextPath }/svg/spinner-solid.svg"/>
</div>
<script>
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
			console.log("오매~ 바닥이네?");
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
					$("#galleryList").append(data);
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
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath }/resources/js/gallery-jquery.min.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/gallery-skel.min.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/gallery-util.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/gallery-main.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/imgLiquid.js"></script>
	</body>
</html>