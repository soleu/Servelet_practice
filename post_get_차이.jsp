<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입</h2>
<%--
GET & POST
웹상의 HTTP 메소드. 서버가 요청을 수행하기 위해 해야할 행동을 표시하는 용도로 사용 --%>
<%--POST : 리소스를 생성/변경하기 위해 설계된 메소드.
필요한 데이터를 바디에 담아 전송. 바디 길이의 제한없이 데이터 전송 가능.(대용량도 가능).
#포스트 방식은 주소상에 노출되는 값이 없음.(-> 겟보다 안전. 개발자 도구로 확인할 수 있기때문에 데이터 암호화 필요.)
//Non-idempotent : 서버에게 동일한 요청을 여러 번 전송해도 응답은 항상 다를 수 있음.(서버의 상태, 데이터 변경에 사용. 생성:POST, 수정 :PUT,PATCH, 삭제:DELETE)
//Content-Type에 요청 데이터의 타입을 표시해야함.
http://localhost:8080/01_jsp_file_01_basic_file/_03_form_post/_03_04_formPro.jsp
 	//포스트방식은 한글처리를 따로 해줘야함. get은 톰캣에서 자동 한글 인코딩 처리
 	request.setCharacterEncoding("UTF-8");
 --%>
 
<%--GET : 서버로부터 정보를 조회하기 위해 설계된 메소드.
//idempotent(멱등) : 서버에게 동일한 요청을 여러번 전송하더라도 동일한 응답이 돌아와야함.(데이터 상태 변경X -> 주로 조회 시 사용.(ex> 웹페이지 열기. 게시글 읽기.))
필요한 데이터를 바디에 담지 않고, 쿼리 스트링을 통해 전공.
#겟 방식은 주소를 통해 전달되는 값이 모두 노출이 됨. 불필요한 요청을 제한하기 위해 요청이 캐시될 수 있음.(정적 컨텐츠가 캐시되어 컨텐츠를 변경해도 내용이 바뀌지 않는 경우 발생.)
http://localhost:8080/01_jsp_file_01_basic_file/_03_form_get/_03_02_formPro.jsp?id=qwer&pw=1234
톰캣에서 알아서 한글 인코딩 처리.
그밖의 차이는 없음.
 --%>
</body>
</html>