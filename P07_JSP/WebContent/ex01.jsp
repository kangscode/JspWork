

<%-- JSP 주석 --%>

<%--

# 스크립트릿
- <%! %>  선언부       : 전역변수 및 메서드 선언
  <%  %> 스크립 트릿  : 일반적인 코드를 작성하는 영역
  <%= %>  표현식       : 데이터를 표현하는 부분

-->



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex01 </title>
</head>
<body>
	<h1> JSP start </h1>
	<br>
	<%= "JSP 페이지 입니다" %>

</body>
</html>