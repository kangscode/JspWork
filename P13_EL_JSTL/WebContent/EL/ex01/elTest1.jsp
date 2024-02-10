<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%> <%-- EL 사용 설정 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 표현 언어 데이터 </title>
</head>
<body>
	<h1> 표현 언어로 데이터 출력 </h1>
	<br>
	<h3>
	\${ 100 } : ${ 100 } <br>
	\${ "안녕하세요" } : ${ "안녕하세요" } <%="안녕사애야" %> <br>
	\${ 10+1 } : ${ 10+1 } <br>
	\${ "10"+1 } : ${ "10"+1 } <br> <%-- 숫자 타입의 문자열과 숫자를 연산하면 문자열이 자동으로 숫자로 변환됩니다 --%>
	<%-- \${ "십"+1 } : ${ "십"+1 } --%><%-- 문자열과 숫자를 더할 수 없습니다 --%>
	<%-- \${ "십"+ "일" } : ${ "십"+ "일" } --%><%-- 문자열끼리 더할 수 없습니다 --%>
	</h3>
</body>
</html>