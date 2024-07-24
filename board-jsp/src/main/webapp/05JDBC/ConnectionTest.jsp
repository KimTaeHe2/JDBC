<%@page import="common.JDBconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>ConnectionTest.jsp : JDBC 연결 테스트용</title>
</head>
<body>
	<h2> JDBC 테스트 1 - 생성자편</h2>
	<%
		JDBconnect jdbConnect = new JDBconnect(); // 1단계, 2단계
		jdbConnect.close();
	%>


</body>
</html>