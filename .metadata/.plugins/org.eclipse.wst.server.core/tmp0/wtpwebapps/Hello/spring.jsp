<%@page import="dto.PersonDTO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//Spring Container(applicationScope) 안에 객체들이 저장된 상태
	// applicationScope는 서블릿 영역이므로 스프링에서는 직접 접근 불가
	// Spring Container 에서 참조값을 얻어와야 한다
	
	WebApplicationContext wc = WebApplicationContextUtils.getWebApplicationContext(application);

	PersonDTO p1 = (PersonDTO)wc.getBean("p1");
	
	PersonDTO p2 = wc.getBean("p2", PersonDTO.class);
	
	pageContext.setAttribute("p1", p1);
	
	pageContext.setAttribute("p2", p2);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<p>${p1.name } / ${p1.age } / ${p1.tel }</p>
		<p>${p2.name } / ${p2.age } / ${p2.tel }</p>
	</div>

</body>
</html>