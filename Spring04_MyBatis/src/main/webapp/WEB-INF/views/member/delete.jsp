<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/delete.jsp</title>
</head>
<body>
<p><strong>${num }</strong>회원 정보를 삭제 했습니다.</p>
<a href="${pageContext.request.contextPath }/member/list.do">회원목록보기</a>
</body>
</html>