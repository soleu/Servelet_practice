<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>
<style>
body {
	background-color: rgb(247, 194, 15);
	font-size: 18px;
}

div {
	text-align: center;
	background-color: rgb(255, 255, 255);
}

span {
	font-size: 50px;
}
</style>
</head>
<body>
	<div>
		<%
			request.setCharacterEncoding("UTF-8");
			String nickname = request.getParameter("nickname");
			String address = request.getParameter("address");
			String menu = request.getParameter("menu");
			String bread = request.getParameter("bread");
			int cheese = Integer.parseInt(request.getParameter("cheese"));
			String[] sauce = request.getParameterValues("sauce");//2개 이상 가져올때는 이 방식 사용

			Random ran = new Random();
			int min = (ran.nextInt(10) + 1) * 10;

			out.println("<br><h2>" + nickname + "님의 주문 내역 확인</h2><br><br>");

			out.println("주소 : " + address + "<br><br>");
			out.println("메뉴 : " + menu + "<br><br>");
			out.println("빵 : " + bread + "<br><br>");
			String cheeseName = "";
			String sauceName = "";
			switch (cheese) {
			case 0:
				cheeseName = "치즈 제외";
				break;
			case 1:
				cheeseName = "아메리칸 치즈";
				break;
			case 2:
				cheeseName = "슈레드 치즈";
				break;
			case 3:
				cheeseName = "모차렐라 치즈";
				break;
			default:
				cheeseName = "선택 안함";
			}
			out.println("치즈 : " + cheeseName + "<br><br>");

			out.println("소스 :");
			for (int i = 0; i < sauce.length; i++) {
				int sauce10 = Integer.parseInt(sauce[i]);
				switch (sauce10) {
				case 1:
					sauceName = "추천 소스";
					break;
				case 2:
					sauceName = "머스타드";
					break;
				case 3:
					sauceName = "스윗 어니언";
					break;
				case 4:
					sauceName = "스윗 칠리";
					break;
				case 5:
					sauceName = "스모크 바베큐";
					break;
				case 6:
					sauceName = "랜치 드레싱";
					break;
				case 7:
					sauceName = "마요네즈";
					break;
				case 8:
					sauceName = "사우스웨스트";
					break;
				case 9:
					sauceName = "홀스레디쉬";
					break;
				case 10:
					sauceName = "올리브오일";
					break;
				default:
					sauceName = "선택 안함";
					break;
				}
				if (i == sauce.length - 1) {
					out.println(sauceName);
				} else {
					out.println(sauceName + ",");
				}
			}
			out.println("<br><br>");
			if (sauce.length > 2) {
				out.println("소스를 2개 초과로 선택하셨습니다. 소스 당 추가 금액 300원 부과<br>");
				out.println("추가 금 : " + (sauce.length - 2) * 300 + "원<br>");
			}
			out.print("<br>고객님이 주문하신 음식이 약 <span>" + min + "</span>분 내에 도착할 예정입니다.");
		%>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>
</body>
</html>