<%@page import="common.JDBconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>webxmlAPPJDBCTest.jsp : application만 사용</title>
</head>
<body>
	<h2> JDBC 연결 테스트 (application만)</h2>
	<%
	JDBconnect jdbc = new JDBconnect(application);
	jdbc.close();
	%>
</body>
</html>