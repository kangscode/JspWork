<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 표현 언어 비교 연산자 </title>
</head>
<body>
	<h1> 표현 언어 비교 연산자 </h1>
	<br>
	<h2>
	\${ 10 == 10 } : ${ 10 == 10 } <br>
	\${ 10 eq 10 } : ${ 10 eq 10 } <br>
	\${ "el" == "el" } : ${ "el" == "el" } <br>
	\${ "el" eq "el" } : ${ "el" eq "el" } <br><br>
	
	\${ 20 != 20 } : ${ 20 != 20 } <br>
	\${ 20 ne 20 } : ${ 20 ne 20 } <br><br>
	
	\${ 10 < 10 } : ${ 10 < 10 } <br> <%=10==10 %>
	\${ 10 lt 10 } : ${ 10 lt 10 } <br>
	\${ 10 > 3 } : ${ 10 > 3 } <br>
	\${ 10 gt 3 } : ${ 10 gt 3 } <br><br>
	
	\${ 10 <= 10 } : ${ 10 <= 10 } <br>
	\${ 10 le 10 } : ${ 10 le 10 } <br>
	\${ 10 >= 3 } : ${ 10 >= 3 } <br>
	\${ 10 ge 3 } : ${ 10 ge 3 } <br><br>
	
	
	</h2>
</body>
</html>