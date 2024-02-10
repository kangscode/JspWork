<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String cookieName = "id";
Cookie cookie = new Cookie(cookieName, "testCookie"); // 쿠키 생성
cookie.setMaxAge(30); // 쿠키 지속 시간 : 초단위로 지정(0 : 즉시 삭제, -1 : 브라우저 종료시 삭제)
response.addCookie(cookie); // 클라이언트에게 보내기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 쿠키 생성 </title>
</head>
<body>
	<h1> 쿠키 생성 페이지 </h1>
	<br>
	<p><%=cookieName %> 쿠키가 생성 되었습니다</p>
	<br>
	<form action="cookieUse.jsp" method="post">
		<input type="submit" value="쿠키 확인">
	</form>
</body>
</html>