<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
        function check(){
                if(document.update.email.value == ""){
                        alert("이메일을 입력하십시오!");
                }else if(document.update.tel1.value == ""){
                        alert("전화번호를 입력하십시오!");
                }else if(document.update.tel2.value == ""){
                        alert("전화번호를 입력하십시오!");
                }else if(document.update.tel3.value == ""){
                        alert("전화번호를 입력하십시오!");
                }else{
                        document.update.submit();
                }
        }
</script>
<%@include file = "/layout/header.jsp" %>
<div align="center">
	<form action="/MyHome/member/checkUpdate.me" name="update" method="post">
        <table style="width: 275px;">
                <tr>
                        <td>번호</td>
                        <td>${login.no}</td>
                </tr>
                <tr>
                        <td>아이디</td>
                        <td>${login.id}</td>
                </tr>
                <tr>
                        <td>이름</td>
                        <td>${login.name}</td>
                </tr>
                <tr>
                        <td>이메일</td>
                        <td><input type="text" name="email" value="${login.email }"></td>
                </tr>
                <tr>
                        <td>전화번호</td>
                        <td>
                        	<c:choose>
                     		<c:when test="${login.tel1 == '010'}">
                     		<select name = "tel1">
                                <option value="010" selected>010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="019">019</option>
                            </select>
                            </c:when>
                     		<c:when test="${login.tel1 == '011'}">
                     		<select name = "tel1">
                                <option value="010">010</option>
                                <option value="011" selected>011</option>
                                <option value="016">016</option>
                                <option value="019">019</option>
                            </select>
                            </c:when>
                     		<c:when test="${login.tel1 == '016'}">
                     		<select name = "tel1">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016" selected>016</option>
                                <option value="019">019</option>
                            </select>
                     		</c:when>
                     		<c:when test="${login.tel1 == '019'}">
                     		<select name = "tel1">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="019" selected>019</option>
                            </select>
                            </c:when>
                     		</c:choose>
                     		-<input type="text" size = "5" maxlength="4" name = "tel2" value="${login.tel2 }">
                            -<input type="text" size = "5" maxlength="4" name = "tel3" value="${login.tel3 }">
                        	
                        </td>
                </tr>
         		<td colspan="2">
                        <span style="float: right;">
                                <input type="button" value = "수정" onclick="javascript:check()">
                                <input type="button" value = "돌아가기" onclick="history.back()">
                        </span>
                </div> 
         		</td>                       
        	</form>
      </table>  
</div>
<%@include file = "/layout/footer.jsp" %>