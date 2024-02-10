<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> if </title>
</head>
<body>
	<h3> if </h3>
	<c:set var="name"> ${ param.username } </c:set>
	<c:set var="age" value="${ param.userage }"/>
	<p> ${ name } 님의 나이 : ${ age }</p>
	
	<%-- <c:if> : if 문 --%>
	<c:if test="${ age >= 20 }">
		<p> 성인 </p>
	</c:if>
	<c:if test="${ age < 20 }">
		<p> 미성년자 </p>
	</c:if>
</body>
</html>