<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/member/update</title>
</head>
<body>
<h1>Alert</h1>
<p> <strong>${dto.name }</strong>회원 정보를 수정 했습니다.
<a href="${pageContext.request.contextPath }/member/list.do">회원 목록으로 가기</a>
</p>
</body>
</html>