<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> formRes2 </title>
</head>
<body>
	<h3> 선택 과목 </h3>
	<br>
	<p>param.subject : ${ param.subject }</p>
	<p>${ paramValues.subject }</p>
	<p>${ paramValues.subject[0] }</p>
	<p>${ paramValues.subject[1] }</p>
	<p>${ paramValues.subject[2] }</p>
	<p>${ paramValues.subject[3] }</p>
	<p>${ paramValues.subject[4] }</p>
</body>
</html>