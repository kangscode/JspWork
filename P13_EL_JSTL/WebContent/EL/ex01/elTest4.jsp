<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 표현 언어 논리 연산자 </title>
</head>
<body>
	<h1> 표현 언어 논리 연산자 </h1>
	<br>
	<h2>
	\${ (10==20) && (20==20) } : ${ (10==20) && (20==20) } <br>
	\${ (10==20) and (20==20) } : ${ (10==20) and (20==20) } <br><br>
		
	\${ (10==20) || (20==20) } : ${ (10==20) || (20==20) } <br>
	\${ (10==20) or (20==20) } : ${ (10==20) or (20==20) } <br><br>
	
	\${ !(10==20) } : ${ !(10==20) } <br>
	\${ not(10==20) } : ${ not(10==20)} <br>
	
	
	
	</h2>

</body>
</html>