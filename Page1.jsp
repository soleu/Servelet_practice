<%@page import="models.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈!</title>
<style>
input:focus {
background:aliceblue;
}
</style>
</head>
<body>

<% 
request.setCharacterEncoding("UTF-8");
String nickname=request.getParameter("nickname");
session.setAttribute("nickname",nickname);
check ch=new check();
int scorevoca=0;
int [] answer={2,2,1,1,1};
int []user={0,0,0,0,0};


String Quiz[][]={{"tommorrow ","tomorrow"},{"lisence ","license"},{"pronunciation ","ponounciation"},{"harass ","harrass"},{"chief ","cheif"}};

%>

<h2>오늘의 영단어!</h2>
<form method="post" action="Result.jsp">
Q.1<br>
<input type="button" value="<%=Quiz[0][0]%>" style="width:75; font-family:돋움; " onclick="<%user[0]=1;%>">
<input type="button" value="<%=Quiz[0][1]%>" style="width:75; font-family:돋움; " onclick="<%user[0]=2;%>">
<br>
<br>
Q.2<br>
<input type="button" value="<%=Quiz[1][0]%>" style="width:75; font-family:돋움; " onclick="<%user[1]=1;%>">
<input type="button" value="<%=Quiz[1][1]%>" style="width:75; font-family:돋움; " onclick="<%user[1]=2;%>">
<br>
<br>
Q.3<br>
<input type="button" value="<%=Quiz[2][0]%>" style="width:75; font-family:돋움; " onclick="<%user[2]=1;%>">
<input type="button" value="<%=Quiz[2][1]%>" style="width:75; font-family:돋움; " onclick="<%user[2]=2;%>">
<br>
<br>
Q.4<br>
<input type="button" value="<%=Quiz[3][0]%>" style="width:75; font-family:돋움; " onclick="<%user[3]=1;%>">
<input type="button" value="<%=Quiz[3][1]%>" style="width:75; font-family:돋움; " onclick="<%user[3]=2;%>">
<br>
<br>
Q.5<br>
<input type="button" value="<%=Quiz[4][0]%>" style="width:75; font-family:돋움; " onclick="<%user[4]=1;%>">
<input type="button" value="<%=Quiz[4][1]%>" style="width:75; font-family:돋움; " onclick="<%user[4]=2;%>">
<br>
<br>


<input type="button" name="score11" value="채점하기" onclick="<%scorevoca=ch.checkAns(user);%>">
<%

%>

<input type="hidden" name="score12" value="<%=scorevoca%>">
<input type="submit" value="결과보기" >
</form>
</body>
</html>