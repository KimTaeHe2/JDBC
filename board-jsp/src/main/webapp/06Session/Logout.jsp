<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Logout.jsp</title>
</head>
<body>
	<%
	session.removeAttribute("UserId"); // 세션 삭제
	session.removeAttribute("UserName");
	
	session.invalidate(); // 세션 무효화
	
	response.sendRedirect("LoginForm.jsp"); // 로그인 화면으로 돌아가기
	%>

</body>
</html>