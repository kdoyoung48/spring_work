<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/home.jsp</title>
<jsp:include page="include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="include/navbar.jsp"></jsp:include>
<div class="container">
	<h1>인덱스 페이지 입니다.</h1>
	<ul>
		<li><a href="users/signup_form.do">회원가입</a></li>
		<li><a href="cafe/private/insertform.do">카페 글쓰러 가기</a></li>
		<li><a href="cafe/list.do">글목록</a></li>
		<li><a href="cafe/list3.do">글목록</a></li>
		<li><a href="file/list.do">자료실</a></li>
		<li><a href="gallery/list.do">갤러리</a></li>
		<li><a href="gallery/list2.do">갤러리2</a></li>
		<li><a href="gallery/list3.do">갤러리3</a></li>
		<li><a href="gallery/list6.do">갤러리6</a></li>
		<li><a href="${pageContext.request.contextPath }/home2.do">홈2</a></li>
		<li><a href="${pageContext.request.contextPath }/home3.do">홈3</a></li>
		<li><a href="${pageContext.request.contextPath }/home4.do">홈4</a></li>
		<li><a href="${pageContext.request.contextPath }/home5.do">홈5</a></li>
		<li><a href="${pageContext.request.contextPath }/home6.do">홈6</a></li>
		<li><a href="${pageContext.request.contextPath }/home7.do">홈777</a></li>
	</ul>
</div>
</body>
</html>