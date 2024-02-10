
<%-- ex02.jsp --%>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
String today = sdf.format(date);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> import </title>
</head>
<body>
	<h1> 오늘 날짜 </h1>
	<br>
	<p> 오늘은 <%=today %> 입니다</p>
</body>
</html>


























