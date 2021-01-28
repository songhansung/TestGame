package kr.green.game.vo;

public class UserVo {
	private String id;
	private String name;
	private String pw;
	private String email;
	private int phone;
	private int money;
	private int rating;
	private String mainImg;
	private String isdel;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getMainImg() {
		return mainImg;
	}
	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}
	@Override
	public String toString() {
		return "UserVo [id=" + id + ", name=" + name + ", pw=" + pw + ", email=" + email + ", phone=" + phone
				+ ", money=" + money + ", rating=" + rating + ", mainImg=" + mainImg + ", isdel=" + isdel + "]";
	}
}
