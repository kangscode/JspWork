<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
request.setAttribute("address", "서울시 오디 ?");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> forward </title>
</head>
<body>
	<jsp:forward page="memberRes.jsp"></jsp:forward> <%-- memberRes.jsp로 포워딩 --%>

</body>
</html>