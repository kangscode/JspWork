<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.dao.MemberDAO" %>
<%@ page import="member.dto.MemberDTO" %>
<%
	request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");

MemberDAO memberDAO = new MemberDAO();
MemberDTO memberDTO = memberDAO.getMember(id);

String tel = memberDTO.getTel();
String tel1 = tel.substring(0,3);
String tel2 = tel.substring(4,8);
String tel3 = tel.substring(9);
%>    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 정보 수정 </title>
<script type="text/javascript">
function checkModify(){
	if(document.modifyForm.name.value==""){
		alert("이름을 입력하세요!");
		document.modifyForm.name.focus();
	}
	else if(document.modifyForm.id.value==""){
		alert("아이디를 입력하세요!");
		document.modifyForm.id.focus();
	}
	else if(document.modifyForm.pwd.value==""){
		alert("비밀번호를 입력하세요!");
		document.modifyForm.pwd.focus();
	}
	else if(document.modifyForm.pwd.value!=document.modifyForm.repwd.value){
		alert("비밀번호가 틀립니다!");
		document.modifyForm.repwd.focus();
	}
	else{
		document.modifyForm.submit();
	}
}
</script>
</head>
<body>
	<form action="modify.jsp" name="modifyForm" method="post">
		<table border="1" cellpadding="4">
			<tr>
				<td width="120" align="center"> 이 름 </td>
				<td width="300"><input type="text" name="name" value="<%= memberDTO.getName() %>"></td>
			</tr>
			<tr>
				<td width="120" align="center"> 아이디 </td>
				<td width="300">
					<input type="text" name="id" value="<%= memberDTO.getId() %>" readonly>
				</td>
			</tr>
			<tr>
				<td width="120" align="center"> 비밀번호 </td>
				<td width="300"><input type="password" name="pwd" value="<%= memberDTO.getPwd() %>"></td>
			</tr>
			<tr>
				<td width="120" align="center"> 비밀번호 확인 </td>
				<td width="300"><input type="password" name="repwd" value="<%= memberDTO.getPwd() %>"></td>
			</tr>
			<tr>
				<td width="120" align="center"> 성 별 </td>
				<td width="300">
				<%if (memberDTO.getGender().equals("M")) {%>
					<input type="radio" name="gender" value="M" id="genderM" checked>
					<label for="genderM"> 남 </label>
					<input type="radio" name="gender" value="M" id="genderF">
					<label for="genderF"> 여 </label>
				<% } else { %>
					<input type="radio" name="gender" value="M" id="genderM" >
					<label for="genderM"> 남 </label>
					<input type="radio" name="gender" value="M" id="genderF" checked>
					<label for="genderF"> 여 </label>
				<%} %>
				</td>
			</tr>
			<tr>
				<td width="120" align="center"> E-mail </td>
				<td width="300">
					<input type="text" name="email" size="10" value="<%=memberDTO.getEmail()%>"> @
					<input type="text" name="domain" size="10" value="<%=memberDTO.getDomain()%>"> 
				</td>
			</tr>
			<tr>
				<td width="120" align="center"> 핸드폰 </td>
				<td width="300">
					<input type="text" name="tel1" value=<%=tel1 %> size="3" maxlength="3"> -
					<input type="text" name="tel2" value=<%=tel2 %> size="3" maxlength="4"> -
					<input type="text" name="tel3" value=<%=tel3 %> size="3" maxlength="4">
				</td>
			</tr>
			<tr>
				<td width="120" align="center"> 주소 </td>
				<td width="300"><input type="text" name="addr" value=<%=memberDTO.getAddr() %> size="50"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="회원정보 수정" onclick="checkModify()"> &nbsp;
					<input type="reset" value="다시작성">
				</td>
			</tr>
			
			
		</table>
	
	</form>

</body>
</html>