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
if(request.getParameter("id")==null){
	out.print("로그인에 실패했습니다.");
}
else{
out.print(request.getParameter("id")+"님 환영합니다!");} %>
</body>
</html>