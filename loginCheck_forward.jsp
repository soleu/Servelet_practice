<%@page import="models.UserManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
UserManager um=UserManager.getInstance();
String id=request.getParameter("id");
String pw=request.getParameter("pw");

if(um.checkUser(id, pw)){
	request.setAttribute("id",id);//속성 이름, 속성 값
	//RequestDispatcher 이라는 클래스 사용. 디스패치 해야하는 파일 이름을 보내서, 해당 속성과 링크할 파일을 따로 보냄.
	RequestDispatcher dispatcher =request.getRequestDispatcher("login_suc_forward.jsp");
	dispatcher.forward(request,response);//forward방식으로 요청 및 응답
}
else{
	response.sendRedirect("login_suc_forward.jsp");//속성없이 보낼때는 간단하게 redirect방식을 사용
}
%>
</body>
</html>