<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/member/updateform</title>
</head>
<body>
<div class="container">
	<h1>회원 정보 수정 폼</h1>
	<form action="update.do" method="post">
		<!-- 회원정보를 수정 반영할때 번호도 필요하기 때문에 폼 제출될때 같이 제출되도록 한다. -->
		<input type="hidden" name="num" value="${dto.num }"/>
		<label for="num">번호</label>
		<input type="text" name="num" value="${dto.num }" disabled/><br />
		<label for="name">이름</label>
		<input type="text" name="name" value="${dto.name }"/><br />
		<label for="addr">주소</label>
		<input type="text" name="addr" value="${dto.addr }"/><br />
		<button type="submit">수정확인</button>		
		<button type="reset">취소</button>
	</form>
</div>
</body>
</html>