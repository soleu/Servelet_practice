<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 속성</title>
<style>
p {
	color: grey;
	font-weight: 400;
	font-size: 110%;
}
</style>
</head>
<body>
	<h2>오늘은??</h2>
	<%
	//import도 스크립트렛 코드로 알아서 들어감
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String strDate = format.format(now);
	Random ran = new Random();
	String[] str = { "JSP", "JAVA", "Android", "HTML5" };
	int i = ran.nextInt(4);
	%>
	<div style="color: skyblue">
		<%=strDate%>
		입니다. <br> 현재 시각은 현재는
		<%=now.getHours()%>시
		<%=now.getMinutes()%>분
		<%=now.getSeconds()%>
		초 입니다.
		<p>
			<br> <br> 오늘은
			<%=str[i]%>
			하는날!
		</p>
		<%
		String[] colorPalette = { "color:skyblue", "color:red", "color:pink", "color:yellow" };
		for (int j = 0; j < str.length; j++) {
		%>
		<p style=<%=colorPalette[j]%>>
			<%=str[j] + "<br>"%>
		</p>
		<%
		}
		%>
	</div>
</body>
</html>
