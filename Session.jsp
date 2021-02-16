<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- 
cookie: 웹 브라우저에 사용자의 상태를 유지하기 위한 정보 저장.
Session : 웹 서버 쪽의 웹 컨테이너에 상태를 유지하기 위한 정보 저장.(바로 다음페이지가 아니라, 연결해서 사용하고 싶다면 세션에 저장해야 한다.)
사용자의 정보를 유지하기 위해 쿠기보다 세션을 사용한 웹 브라우저와 웹 서버의 상태 유지가 훨씬 안정적.보안성 높음. 
1 웹 브라우저 -> 1 세션(세션은 웹 컨테이너, 웹 컨테이너는 웹 서버에 저장)
//메소드
- getAttibute : name으로 value 리턴.
- setAttribute: name값에 value 할당.
- invalidate() : 현재 생성된 세션 무효화.
--%>

<form method="POST" action="login.jsp">
id: <input type="text" name="id" maxlength="50"><br>
pw: <input type="text" name="pw" maxlength="50"><br>
<input type="submit" value="전송하기"> 
</form>
</body>
</html>