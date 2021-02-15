<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서브웨이 주문하기</title>
<style>
body {
	background-color: rgb(34, 142, 69);
}

div {
	text-align: center;
	background-color: rgb(255, 255, 255);
}
</style>
</head>
<body style="text-align: center;">
	<h2>SUBWAY</h2>

	<div>
		<img
			src="https://lh3.googleusercontent.com/6N5drQRh40Vm75jK1Hh6t0Ehqf0cE4DuB_l7aWskfcoDiHCmr8RU8uhK4rHcNDkIjKiCVkrLb63v28NeC7VIkTr74qUQxtczQT1eAQvsbMaG5OEm8KywRdDmgA11Fe9qgkKRNuAG7w=w600-h315-p-k "
			style="width: 500px; height: auto;">
		<form method="post" action="OrderResult.jsp">
			닉네임 : <input type="text" name="nickname"><br> <br>
			주소 : <input type="text" name="address"><br> <br> 메뉴
			: <select name="menu">
				<option>이탈리안 비엠티</option>
				<option>미트볼</option>
				<option>터키</option>
				<option>치킨데리야끼</option>
				<option>써브웨이 클럽</option>
			</select><br> <br> 빵선택 : <select name="bread">
				<option>화이트</option>
				<option>파마산 오레가노</option>
				<option>휘트</option>
				<option>허니오트</option>
				<option>플렛브래드</option>
			</select><br> <br> 치즈 선택 : <br>
			<input type="radio" name="cheese" value="1" checked> 아메리칸 치즈
			&nbsp;<br> <input type="radio" name="cheese" value="2">
			슈레드 치즈 &nbsp;<br> <input type="radio" name="cheese" value="3">
			모차렐라 치즈 &nbsp;<br> <input type="radio" name="cheese" value="0">
			치즈 제외 &nbsp;<br> <br> 소스 선택 : <br> <input
				type="checkbox" name="sauce" value="1" checked> 추천소스 &nbsp;
			<input type="checkbox" name="sauce" value="2"> 머스타드 &nbsp; <input
				type="checkbox" name="sauce" value="3"> 스윗 어니언 &nbsp; <input
				type="checkbox" name="sauce" value="4"> 스윗 칠리 &nbsp; <input
				type="checkbox" name="sauce" value="5"> 스모크 바베큐 &nbsp;<br>
			<input type="checkbox" name="sauce" value="6"> 랜치 드레싱 &nbsp;
			<input type="checkbox" name="sauce" value="7"> 마요네즈 &nbsp; <input
				type="checkbox" name="sauce" value="8"> 사우스웨스트 &nbsp; <input
				type="checkbox" name="sauce" value="9"> 홀스레디쉬 &nbsp; <input
				type="checkbox" name="sauce" value="10"> 올리브오일 &nbsp; <br>
			<input type="submit" value="주문하기">
		</form>

		<img
			src="https://lh3.googleusercontent.com/BC7DZ3ovflxTi2zhD0lU2nxB826MzBEYOIEtTnq1AlvFKO1cwx_K-2Viy8h4CoSDwqv5KE3VQq_ELz0SLwvP0s2G4VClog9JH1lHw-d_NolvmuxU8xjdMsKK1omHs_LeGFXaWhQDLw=w600-h315-p-k"
			width=700px />
	</div>
</body>
</html>