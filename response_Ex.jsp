<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Move to page</title>
</head>
<%--response : sendRedirect(String url) 웹서버가 브라우저에게 지정한 페이지로 이동하도록 지시(강제) --%>
<body>
<% response.sendRedirect("https://www.naver.com");//웹 페이지 이동 %>
<%-- 
1. 리다이렉트 방식
: 이동할 페이지 뒤에 쿼리 스트링 형태로 작성
-> "페이지?id=" +id+ "&name="+name 
//파라미터값이 한글일 경우 +URLEncoder.encode(name,"UTF-8")
<% response.sendRedirect("login.jsp?id=" + id); %>

2. 포워드 방식
: request.setAttribute() request.getAttribute() 메서드로 파라미터 전달 및 가져오기
forward()메서드로 이동 처리(RequestDispatcher)
*서버 상에서 페이지 이동(브라우저가 알아치리지 못함 -url 변화 없음)
request,response 유지
한글 인코딩 필요 없음

request.setAttribute("id", id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
--%>
</body>
</html>