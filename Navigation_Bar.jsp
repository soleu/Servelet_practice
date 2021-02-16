<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버</title>
<style>


</style>
</head>
<body>
<form method="post" action="login.jsp">
이동하기<br>
<a style="text-align=center">
<input type="button" value="카페" style="width:75; font-family:돋움; background-color:#2DB400;" onclick="window.location.href='https://section.cafe.naver.com/'">
<input type="button" value="쇼핑" style="width:75; font-family:돋움; background-color:#2DB400;" onclick="window.location.href='https://shopping.naver.com/'">
<input type="button" value="사전" style="width:75; font-family:돋움; background-color:#2DB400;" onclick="window.location.href='https://dict.naver.com/'">
<input type="button" value="뉴스" style="width:75; font-family:돋움; background-color:#2DB400;" onclick="window.location.href='https://news.naver.com/'">
<input type="button" value="영화" style="width:75; font-family:돋움; background-color:#2DB400;"  onclick="window.location.href='https://movie.naver.com/'">
</a>
<br><br>로그인하기<br>
<input type="text" name="id"><br>
<input type="text"name="pw"><br>
<input type="submit" value="전송하기"><br><br>

</form>
</body>
</html>