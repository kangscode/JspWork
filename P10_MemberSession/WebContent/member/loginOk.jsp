<%@ page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// Session 로 전달된 데이터 받기
String name = (String) session.getAttribute("memberName");
String id = (String)session.getAttribute("memberId");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 성공 </title>
</head>
<body>
	<img src="../image/home.gif" alt="메인으로" width="300" height="200"
		 onclick="location.href='../main/index.jsp'" style="cursor:pointer;">
	<br><br>
	<p><%=name %>님 안녕하세요</p>
</body>
</html>