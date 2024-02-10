<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id = (String)session.getAttribute("memberId");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> index </title>
</head>
<body>
	<h1> main </h1>
	<br>
	<%if(id == null) { %>
		<a href="../member/writeForm.jsp"> 회원가입 </a><br><br>
		<a href="../member/loginForm.jsp"> 로그인 </a><br>
	<%} else { %>
		<a href="../board/boardWriteForm.jsp"> 글쓰기 </a>
		<br><br>
		<a href="../member/modifyForm.jsp?id=<%=session.getAttribute("memberId") %>"> 회원정보 수정 </a> 
		<br><br>
		<a href="../member/logOut.jsp"> 로그아웃 </a>
	<%} %>
</body>
</html>