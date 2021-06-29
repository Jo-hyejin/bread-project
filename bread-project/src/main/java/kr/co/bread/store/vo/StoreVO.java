package kr.co.bread.store.vo;

public class StoreVO {

	private int no;
	private String storeNo;
	private String storeName;
	private float lat;
	private float longi;
	private String tel1;
	private String tel2;
	private String tel3;
	private String addr;
	private String intro;
	
	public StoreVO() {
		super();
	}

	public StoreVO(int no, String storeNo, String storeName, float lat, float longi, String addr) {
		super();
		this.no = no;
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.lat = lat;
		this.longi = longi;
		this.addr = addr;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(String storeNo) {
		this.storeNo = storeNo;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public float getLat() {
		return lat;
	}

	public void setLat(float lat) {
		this.lat = lat;
	}

	public float getLongi() {
		return longi;
	}

	public void setLongi(float longi) {
		this.longi = longi;
	}

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}
	
}
