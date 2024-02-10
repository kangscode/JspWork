<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.dao.MemberDAO" %>
 
<%
 	String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    MemberDAO memberDAO = new MemberDAO();
    String name = memberDAO.login(id, pwd);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 확인 </title>
</head>
<body>
	<%
	//session 속성 설정
	if(name != null){
		session.setAttribute("memberName", name);
		session.setAttribute("memberId", id);
		response.sendRedirect("loginOk.jsp");
	} 
	else {
		response.sendRedirect("loginFail.jsp");
	}
	%>


<%--	
	<%if(name != null) { %>
		<p><%=name %>님이 로그인 하셨습니다</p>
	<%} else  {%>
		<p>아이디 또는 비밀번호가 틀렸습니다</p>
	<%} %>
--%>
</body>
</html>