<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- @ = 지시어 JSP 시그니쳐 필수  -->
<%! // ! = 선언부 : 변수 선언, 메서드
String str1 = "JSP";
String str2 = "안녕하세요!!!"; // 필드처럼 변수선언


%>
<!DOCTYPE html> <!-- HTML5 시작 -->
<html> <!-- HTML 문서 시작 -->
<head> <!-- HEAD 시작 (문서의 각종 설정 정보) -->
<meta charset="UTF-8"> <!-- 문서의 메타 정보 -->
<title>HelloJSP</title> <!-- 브라우저의 제목 -->
</head> <!-- HEAD 종료 -->
<body> <!-- 본문 (브라우저의 안쪽 페이지) -->
	<h2>처음 만들어 보는 <%= str1 %></h2> <!-- = 표현식 : 변수내용출력(계산x)h태그는 제목 태그로 글자 크기가 있다. 1(큼) ~ 6(작음) -->
	<p> <!-- p = 문단태그 println -->
		<% // 스크립틀릿 : 원시적인 java코드
		out.println(str2 + str1 + "입니다. 지금부터 시작 합시다");
		%>
	</p>
</body>
</html> <!-- HTML 문서 끝 -->