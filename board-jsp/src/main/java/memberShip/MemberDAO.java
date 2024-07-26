package memberShip;

import java.sql.SQLException;

import common.JDBconnect;

public class MemberDAO extends JDBconnect{ // JDBconnect 를 상속하여 1,2,5단계를 적용
	// jdbc를 처리하는 용도
	
	// 기본 생성자
	public MemberDAO(String drv, String url, String id, String pw) { // 2번째 방법으로 적용
		super(drv, url, id,pw); // 부모 생성자에게 전달
	} // 1단계 2단계
	
	// 3단계(sql문 생성)
	public MemberDTO getMemberDTO(String id, String pass) {
		MemberDTO memberDTO = new MemberDTO(); // 빈객체 생성
		String query = "select*from member where id=? and pass=?"; // 쿼리문 생성
		
		try {
			preparedStatement = connection.prepareStatement(query); // 동적 쿼리문 적용
			preparedStatement.setString(1, id); // 1번째 ? 처리
			preparedStatement.setString(2, pass); // 2번째 ? 처리
			resultSet = preparedStatement.executeQuery(); // 쿼리실행 -> 표로받음
			
			if(resultSet.next()) { // resultSet 표에 값이 있는지 확인
				memberDTO.setId(resultSet.getString("id"));
				memberDTO.setPass(resultSet.getString("pass"));
				memberDTO.setName(resultSet.getString("name"));
				memberDTO.setRegdate(resultSet.getString("regidate"));
			}
		} catch (SQLException e) {
			System.out.println("MemberDTO.getMemberDTO() 메서드 오류 (3단계)");
			e.printStackTrace();
		}
		return memberDTO;
	} // 3단계 종료
	
} // class 종료
