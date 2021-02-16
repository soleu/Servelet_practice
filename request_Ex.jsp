<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 예제</title>
</head>
<body style="text-align: center">
<h2 style="text-align: center"> 다른 그림 찾기</h2>
<% String person="🧍";%>
<p style="font-size: 80px">
<%= person%>
</p>
사람 수를 입력하세요(3 이상)
<form method="put" action="input.jsp">
	&nbsp;&nbsp; <input type="text" name="number">
	<input type="submit"><%--submit 하면 입력값이 넘어가면서, 다음 페이지를 불러옴. --%>
	
	<%-- 이름 : <% if(request.getParameter("user")!=null){ %>//null이 아닐때
	<%= request.getParameter("user") %>//resquest.getParameter로 user의 값을 받음.
	<%} %>
	이런식으로 한 페이지에 부를수도 있음.
	
	--%>
</form>
<br>
</body>
</html>