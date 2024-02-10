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
	if(name != null) {
		Cookie cookieName = new Cookie("memberName", URLEncoder.encode(name, "utf-8"));
		cookieName.setMaxAge(100);
		cookieName.setPath("/");
		response.addCookie(cookieName);
		
		Cookie cookieId = new Cookie("memberId", id);
		cookieName.setMaxAge(100);
		cookieName.setPath("/");
		response.addCookie(cookieId);
		
		response.sendRedirect("loginOk.jsp");
	} else {
		response.sendRedirect("loginFail.jsp");
	}
	%>

<%-- 
	<%
	if(name != null){
		response.sendRedirect("loginOk.jsp?name=" + URLEncoder.encode(name, "utf-8") + "&id" + id);
	} 
	else {
		response.sendRedirect("loginFail.jsp");
	}
	%>
--%>

<%--	
	<%if(name != null) { %>
		<p><%=name %>님이 로그인 하셨습니다</p>
	<%} else  {%>
		<p>아이디 또는 비밀번호가 틀렸습니다</p>
	<%} %>
--%>
</body>
</html>