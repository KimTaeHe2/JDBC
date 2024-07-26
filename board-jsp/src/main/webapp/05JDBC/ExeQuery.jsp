<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>ExeQuery.jsp</title>
</head>
<body>
	<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
	<%
	JDBconnect jdbc = new JDBconnect();
	
	String sql = "select id, pass, name, regidate from member";
	Statement statement = jdbc.connection.createStatement();
	
	ResultSet resultSet = statement.executeQuery(sql);
	
	while(resultSet.next()){
		String id = resultSet.getString(1);
		String pw = resultSet.getString(2);
		String name = resultSet.getString("name");
		java.sql.Date regidate = resultSet.getDate("regidate");
		
		out.println(String.format("%s %s %s %s", id, pw, name, regidate)+ "<br>");
	}
	jdbc.close();
	%>
</body>
</html>