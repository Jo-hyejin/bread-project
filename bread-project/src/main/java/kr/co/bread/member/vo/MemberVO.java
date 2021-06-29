package kr.co.bread.member.vo;

import javax.validation.constraints.NotBlank;

public class MemberVO {
	
	@NotBlank(message="필수항목입니다")
	private String userid;
	@NotBlank(message="필수항목입니다")
	private String password;
	@NotBlank(message="필수항목입니다")
	private String username;
	@NotBlank(message="필수항목입니다")
	private String email;
	@NotBlank(message="필수항목입니다")
	private String phone1;
	@NotBlank(message="필수항목입니다")
	private String phone2;
	@NotBlank(message="필수항목입니다")
	private String phone3;
	
	public MemberVO() {
		super();
	}

	public MemberVO(String userid, String password, String username, String email, String phone1, String phone2, String phone3) {
		super();
		this.userid = userid;
		this.password = password;
		this.username = username;
		this.email = email;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", password=" + password + ", username=" + username + ", email=" + email
				+ ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3 + "]";
	}
	
}
