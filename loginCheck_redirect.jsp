<%@page import="models.UserManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<% 
UserManager um=UserManager.getInstance();

String id=request.getParameter("id");//name으로 매칭
String pw=request.getParameter("pw");

if(um.checkUser(id, pw)){
	response.sendRedirect("login_suc_redirect.jsp?id="+id);
}else{
	response.sendRedirect("login_suc_redirect.jsp");} %>

</body>
</html>