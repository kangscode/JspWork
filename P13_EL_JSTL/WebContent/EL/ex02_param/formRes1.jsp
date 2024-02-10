<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String email = request.getParameter("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex01_formRes </title>
</head>
<body>
	<table border="1">
		<tr>
			<th width="20%"> 아이디 </th>
			<th width="20%"> 비밀번호 </th>
			<th width="20%"> 이름 </th>
			<th width="40%"> email </th>
		</tr>
		<tr align="center">
			<td><%=id %></td>
			<td><%=pwd %></td>
			<td><%=name %></td>
			<td><%=email %></td>
		</tr>
		<%-- param 객체를 사용해서 getParameter()메서드를 사용하지 않고 값을 가져옵니다 --%>
		<tr align="center">
			<td>${ param.id }</td>
			<td>${ param.pwd }</td>
			<td>${ param.name }</td>
			<td>${ param.email }</td>
		</tr>
	</table>

</body>
</html>





