<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String fileName = request.getParameter("fileName");

// 실제 폴더
String realFolder = request.getServletContext().getRealPath("/storage");

// 파일 객체 생성
File file = new File(realFolder, fileName);

// 파일 링크를 클릭했을 때 다운로드 화면이 출력되게 처리
fileName = "attachment;fileName=" + new String(URLEncoder.encode(fileName, "UTF-8")).replaceAll("//+", " ");
response.setHeader("Content-Disposition", fileName);
response.setHeader("Contnet-length", file.length() + "");

out.clear();
out = pageContext.pushBody(); // 기존 jsp out 객체의 스트림을 지워줍니다

// 파일을 읽어서 클라이언트에 저장
BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());

byte[] b = new byte[(int)file.length()];
bis.read(b, 0, b.length);
bos.write(b);

bis.close();
bos.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 파일 다운로드 </title>
</head>
<body>

</body>
</html>