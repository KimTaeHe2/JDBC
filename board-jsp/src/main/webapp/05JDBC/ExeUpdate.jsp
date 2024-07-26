<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>ExeUpdate.jsp</title>
</head>
<body>
	<h2>회원 추가 테스트 (executeUpdate() 사용)</h2>
	<%
	JDBconnect jdbc = new JDBconnect();
	
	String id = "test1";
	String pass = "1234";
	String name = "테스트1회원"; // member테이블 연습 insert
	
	String sql = "insert into member values(?,?,?,sysdate)";
	PreparedStatement preparedStatement = jdbc.connection.prepareStatement(sql);
	preparedStatement.setString(1, id);
	preparedStatement.setString(2, pass);
	preparedStatement.setString(3, name);
	
	// 쿼리 수행
	int result = preparedStatement.executeUpdate();
	out.println(result + "행이 입력 되었습니다.");
	
	// 연결 닫기
	jdbc.close();
	%>



</body>
</html>