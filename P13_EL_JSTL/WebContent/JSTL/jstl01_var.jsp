<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 변수 </title>
</head>
<body>
	<h3> 변수 설정 </h3> <%-- <c:set> : 변수 설정( 변수는 기본적으로 page 영역의 속성으로 저장 --%>
	<br>
	<%-- 방법 1 --%>
	<c:set var="num1" value="1" />
	<p> num1 : ${ num1 } </p>
	<br>
	
	<%-- 방법 2 --%>
	<c:set var="num2"> 2 </c:set>
	<p> num2 : ${ num2 } </p>
	<br>
	
	<%-- 방법 3(EL 적용 --%>
	<c:set var="num3" value="${ 3 }" />
	<p> num3 : ${ num3 } </p>
	<br>
	
	<%-- 방법 4(scope 지정) --%>
	<c:set var="num4" value="4" scope="request" />
	<p> num4 : ${ num4 } </p>
	<br>
	
	<hr>
	<h3> 변수 삭제 </h3>
	<c:set var="name" value="데이터" />
	<p> name : ${ name } </p>
	
	<%-- 변수 삭제 : <c:remove> --%>
	<c:remove var="name" />
	<p> name : ${ name } </p>	
</body>
</html>