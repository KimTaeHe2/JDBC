<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		String popupMode = "on"; // 쿠키 제어용
		
		Cookie[] cookies = request.getCookies(); // 쿠키의 모든 정보를 배열로 가져온다.
		if(cookies != null){
			for(Cookie c : cookies){ // 쿠키 배열에서 1개씩 가져옴
				String name = c.getName();	 // 배열에서 이름 가져옴
				String value = c.getValue(); // 배열에서 값 가져옴
				if(name.equals("popupClose")){
					popupMode = value; // on, off
				} // if 종료
			} // for 종료
		} // if 종료
		
	%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PopupMain.jsp : 쿠키를 활용한 팝업 제어 테스트</title>
<!-- html(문서태그), css3, javascrip -->
</head>
<body>
	<style>
div#popup {
	position: absolute;
	top: 100px;
	left: 50px;
	color: yellow;
	width: 270px;
	height: 100px;
	background-color: gray;
}

div#popup>div { /* div안쪽에 div스타일 */
	position: relative;
	background-color: #ffffff;
	border: 1px solid black;
	padding: 10px;
	color: black;
}
</style>
	<!-- css3 를 적용하는 블럭 : 색, 크기, 도형(스타일적용) -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous">
		/* 외부에서 제공하는 jquery 라이브러리 cdn */
		/* jquery : 자바스크립트를 조금 더 편하게 개선한 코드 */
	</script>

	<script>
	$(function(){<!--jquery의 기본 프레임  -->
		$('#closeBtn').click(function(){ <!-- id가 closeBtn 객체를 클릭하면??? -->
			$('#popup').hide(); <!-- id가 popup인 객체를 숨김 -->
				var chkval = $("input:checkbox[id=inactiveToday]:checked").val();
				/* input 태그에 check박스 타입에 id가 inactiveToday가 체크인지 값을 chkval에 넣음 */
				$.ajax({ /* 비동기 코드로 현재 창을 유지하면서 데이터를 전달 */
					url : './PopupCookie.jsp',
					type : 'get',
					data : {inactiveToday : chkval},
					dataType : "text",
					success : function(resData){
						if(resData != ''){
							location.reload();
						} 
					}
				});
		});
	});
	</script>
	<!-- javascript 를 적용하는 블럭 : 동적 문서 -->

	<h2>팝업 메인 페이지 (v0.1)</h2>
	<%
		out.print("현재 팝업창은 " + popupMode + "상태입니다.");
		if(popupMode.equals("on")){
			
		
	%>
	<div id="popup">
		<h2 align="center">공지사항</h2>
		<div align="right">
			<form name="popfrm">
				<input type="checkbox" id="inactiveToday" value="1" /> 하루동안 열지 않음
				<input type="button" value="닫기" id="closeBtn" />
			</form>
		</div>
	</div>
	<!-- div = 사각형 메모지 -->
	<%
		}
	%>
</body>
</html>