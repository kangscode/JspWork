<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
String operator = request.getParameter("operator");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 연산 결과 </title>
</head>
<body>
	<%
	double result = 0;
	if(operator == "+") {
		result = num1 + num2;
	}
	else if(operator == "-") {
		result = num1 + num2;
	}
	else if(operator == "x") {
		result = num1 + num2;
	}
	else if(operator == "%") {
		result = num1 + num2;
	}
	%>
	<p> <%=num1 %> <%=operator %> <%=num2 %> = <%=result %>


</body>
</html>