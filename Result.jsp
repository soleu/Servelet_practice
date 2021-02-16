<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 점수는?</title>
</head>
<body>
<%
String Score=request.getParameter("score12");
String nickname=(String)session.getAttribute("nickname");
%>
<h2><%=nickname%>님의 점수는?</h2>
<%=Score%>
</body>
</html>