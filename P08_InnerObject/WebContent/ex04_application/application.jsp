<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> application </title>
</head>
<body>
	<table border="1">
		<tr>
			<td> JSP 버전 </td>
			<td><%=application.getMajorVersion() %></td>
		</tr>
		<tr>
			<td> 컨테이너 정보 </td>
			<td><%=application.getServerInfo() %></td>
		</tr>
		<tr>
			<td> 파일시스템 경로 </td>
			<td><%=application.getRealPath("/") %></td>
		</tr>
	
	</table>

</body>
</html>