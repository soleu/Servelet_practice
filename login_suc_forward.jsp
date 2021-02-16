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
if(request.getAttribute("id")==null){
out.print("로그인 정보가 일치하지 않습니다.");
}
else{
String id=(String)request.getAttribute("id");//함수 리턴 형 : Object
out.print(id+"님, 환영합니다!");
}
%>
</body>
</html>