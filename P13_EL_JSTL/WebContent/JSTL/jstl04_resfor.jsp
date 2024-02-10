<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> for </title>
</head>
<body>
	<h3> for </h3>
	<%--
		<c:forEach var="변수이름 items="반복 객체" begin="시작값" end="마지막값" step="증가값">
		</c:forEach
	 --%>
	 <c:forEach var="language" items="${paramValues.lang }">
	 	${ language }
	 </c:forEach>

</body>
</html>