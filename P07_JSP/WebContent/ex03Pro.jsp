<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 결과 </title>
</head>
<body>
	<h1> 두수의 합 </h1>
	<br>
	<h3> <%=num1 %> + <%=num2 %> = <%=num1+num2 %> </h3>

</body>
</html>