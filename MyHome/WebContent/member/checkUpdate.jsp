<!--<%@page import="member.dto.MemberDTO"%>
<%@page import="member.dao.MemberDAO"%>-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//request.setCharacterEncoding("UTF-8");
	//MemberDTO dto = (MemberDTO)session.getAttribute("login");
	//dto.setEmail(request.getParameter("email"));
	//dto.setTel1(request.getParameter("tel1"));
	//dto.setTel2(request.getParameter("tel2"));
	//dto.setTel3(request.getParameter("tel3"));
	
	//MemberDAO dao = MemberDAO.getInstance();
	//boolean check = dao.update(dto);
	
		//out.write("<script>");
    	//if(check){
        //        session.setAttribute("login", dto);
        //        out.write("alert('수정완료!!MyPage로...');");
        //        out.write("location.href = '/MyHome/member/myPage.jsp';");
      //  }else{
      //          out.write("alert('수정실패!!이전페이지로...');");
      //          out.write("history.back();");
      //  }
        //out.write("</script>");
        
%> 

<c:choose>
	<c:when test="${check }">
		<script>
		alert('수정완료!!MyPage로...');
		location.href = '/MyHome/member/myPage.jsp';
		</script>
	</c:when>
	<c:otherwise>
		<script>
		alert('수정실패!!이전페이지로...');
		history.back();
		</script>
	</c:otherwise>
</c:choose>









