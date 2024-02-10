<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.dto.MemberDTO" %>
<%@ page import="member.dao.MemberDAO" %>
<%
	request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String domain = request.getParameter("domain");
String tel = (request.getParameter("tel1") + "-" + request.getParameter("tel3") + "-" + request.getParameter("tel3"));
String addr = request.getParameter("addr");

MemberDTO memberDTO = new MemberDTO();
memberDTO.setName(name);
memberDTO.setId(id);
memberDTO.setPwd(pwd);
memberDTO.setGender(gender);
memberDTO.setEmail(email);
memberDTO.setDomain(domain);
memberDTO.setTel(tel);
memberDTO.setAddr(addr);

MemberDAO memberDAO = new MemberDAO();
int res = memberDAO.modify(memberDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원정보 수정 확인 </title>
</head>
<body>
	<br>
	<%if(res != 0) { %>
		<p> 회원정보 수정 성공 ^^ </p>
	<%} else { %>
		<p> 회원정보 수정 실패 ㅠㅠ</p>
	<%} %>
	<br>
	<input type="button" value="main" onclick="location.href='../main/index.jsp'">	
</body>
</html>