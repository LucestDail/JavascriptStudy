package chap7;
/**
 * Action 태그에 대해서 알아보았습니당...
 * 1. Forward Action Tag
 *  <jsp:forward file = ""/> => 이렇게 하면 단순히 포워드만 합니다.
 *  혹은
 *  <jsp:forward file = "">
 *  	<jsp:param .../>
 *  </jsp:forward> => 이렇게 하면 파라매터값 설정이 가능합니다...
 *  
 *  
 * 2. Include Action tag
 * <jsp:include file = ""/> => include 만 할게용
 * <jsp:include file = "">
 * <jsp : param .../>
 * </jsp:include> => 이렇게하면 파라매터 설정 가능!
 * 
 * 3. useBean Action tag 자바 클래스와 JSP 간의 연결, 객체 생성을 담당!
 * <jsp:useBean id = ".." class = "pacakge.class" scope = "...."/>
 * scope 는 4가지만 사용 가능!
 * 
 * 4. setProperty Action tag => useBean 에서 설정된 bean 클래스의 setter
 * <jsp:setProperty property = "*" name = ".." />
 * 
 * 5. getProperty Action tag => useBean 에서 설정된 bean 클래스의 getter
 * <jsp:getProperty property = "*" name = ".."/>
 * @author oseunghyeon
 *
 */
public class Member {
	private String id;
	private String pass;
	private String name;
	private int gender;
	private int age;
	private String email;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender2() {
		return (gender==1) ? "남자" : "여자";
	}

}
