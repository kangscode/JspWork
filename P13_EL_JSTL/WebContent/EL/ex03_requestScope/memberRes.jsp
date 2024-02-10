<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 정보 </title>
</head>
<body>
<table border="1">
		<tr>
			<th width="20%"> 아이디 </th>
			<th width="20%"> 비밀번호 </th>
			<th width="20%"> 이름 </th>
			<th width="40%"> email </th>
			<th width="20%"> 주소 </th>
		</tr>
		<tr align="center">
			<td>${ param.id }</td>
			<td>${ param.pwd }</td>
			<td>${ param.name }</td>
			<td>${ param.email }</td>
			<td>${ requestScope.address }</td>
		</tr>
	</table>

</body>
</html>