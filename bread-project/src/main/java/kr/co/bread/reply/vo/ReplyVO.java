package kr.co.bread.reply.vo;

public class ReplyVO {

	private int no;
	private String userId;
	private String userName;
	private int storeNo;
	private String storeName;
	private String content;
	private String regDate;
	private float grade;
	
	public ReplyVO() {
		super();
	}

	public ReplyVO(int no, String userId, String userName, String storeName, String content, String regDate, float grade) {
		super();
		this.no = no;
		this.userId = userId;
		this.userName = userName;
		this.storeName = storeName;
		this.content = content;
		this.regDate = regDate;
		this.grade = grade;
	}
	
	public ReplyVO(int no, String userId, int storeNo, String content, String regDate, float grade) {
		super();
		this.no = no;
		this.userId = userId;
		this.storeNo = storeNo;
		this.content = content;
		this.regDate = regDate;
		this.grade = grade;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public float getGrade() {
		return grade;
	}

	public void setGrade(float grade) {
		this.grade = grade;
	}
	
}
