<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> redirect </title>
</head>
<body>
	<h1> redirect </h1>
	<br>
	<p>
		redirect.jsp -> sendProc.jsp -> sendResult.jsp 페이지로 이동합니다 <br>
		sendRedirect로 이동하면 데이터는 공유되지 않습니다
	</p>
	<br>
	<input type="button" value="redirect" onclick="location.href='sendProc.jsp'">
</body>
</html>