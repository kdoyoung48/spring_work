<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/file/upload.jsp</title>
</head>
<body>

	<p>
		${id} 님이 업로드한 ${orgFileName} 파일을 저장했습니다.
		<a href="${pageContext.request.contextPath }/file/list.do">목록보기</a>
	</p>

</body>
</html>