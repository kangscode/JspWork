<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session.removeAttribute("login");

	//session.invalidate();
	
	//session = request.getSession();
	
	//session.setAttribute("asdfasdf", "logout.jsps"); 
%>
	

<script>
	alert('로그아웃 되었습니다.');
	location.href='/MyHome/';
</script>
