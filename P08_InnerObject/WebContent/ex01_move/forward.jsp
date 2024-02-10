<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> forward </title>
</head>
<body>
	<h1> forward </h1>
	<br>
	<p>
		forward.jsp -> forwardProc.jsp -> forwardResult.jsp 페이지로 이동합니다 <br>
		forward로 이동하면 데이터를 공유합니다 <br>
		주소는 forwardProc.jsp로 보이지만 결과는 forwardResut.jsp가 나옵니다
	</p>
	<input type="button" value="forward" onclick="location.href='forwarProc.jsp'">




</body>
</html>