<%@page import="member.dao.MemberDAO"%>
<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//request.setCharacterEncoding("utf-8");
//String password = request.getParameter("password");
//MemberDTO dto = (MemberDTO)session.getAttribute("login");


//if(password.equals(dto.getPassword())) {
//	MemberDAO dao = MemberDAO.getInstance();
//	boolean check = dao.delete(dto.no);
//	if(check) {
//		session.invalidate();
//		out.write("<script>");
//		out.write("alert('탈퇴성공!!인덱스페이지로...');");
//      out.write("location.href = '/MyHome/';");
//	}
//	else{
//		out.write("<script>");
//		out.write("alert('탈퇴 실패.. 인덱스페이지로..');");
//		out.write("location.href = '/MyHome/';");
//		out.write("<script>");
//	}
///}
//else {
//    out.write("alert('비밀번호가 틀렸습니다.!!이전페이지로....');");
//    out.write("history.back();");
//    out.write("</script>");
//}

%>    

<c:choose>
	<c:when test="${check0 }">
		<c:choose>
			<c:when test="${check }">
				<script>
				alert('탈퇴성공!!인덱스페이지로...');
				location.href = '/MyHome/';
				</script>
			</c:when>
			<c:otherwise>
				<script>
				alert('탈퇴 실패.. 인덱스페이지로..');
				location.href = '/MyHome/';
				</script>
			</c:otherwise>
		</c:choose>
		
	</c:when>
	<c:otherwise>
		<script>
		alert('비밀번호가 틀렸습니다.!!이전페이지로....');
		history.back();
		</script>
	</c:otherwise>
</c:choose>






    
