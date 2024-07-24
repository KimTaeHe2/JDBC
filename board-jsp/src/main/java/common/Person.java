package common;

public class Person {
	// 자바 빈즈 규약
	// 1. 기본패키지 이외의 패키지에 속해야한다
	// 2. 기본 생성자 생성
	// 3. 필드 private
	// 4. 게터/세터 public
	// 5. 게터/세터 메서드 있어야함

	private String name;
	private int age;
	
	public Person() {} // 기본생성자
	
	public Person(String name, int age) { // 커스텀생성자
		this.name = name;
		this.age = age;
	}

	// 게터/세터
	public String getName() {return name;}

	public void setName(String name) {this.name = name;}

	public int getAge() {return age;}

	public void setAge(int age) {this.age = age;}
	
	
}
