package kr.green.game.vo;

public class BasketVo {
	private int basketNum;
	private int gameNum;
	private String id;
	private String isdel;
	private String title;
	private int price;
	private String company;
	private String filename;
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getBasketNum() {
		return basketNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public void setBasketNum(int basketNum) {
		this.basketNum = basketNum;
	}
	public int getGameNum() {
		return gameNum;
	}
	public void setGameNum(int gameNum) {
		this.gameNum = gameNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}
	@Override
	public String toString() {
		return "BasketVo [basketNum=" + basketNum + ", gameNum=" + gameNum + ", id=" + id + ", isdel=" + isdel
				+ ", title=" + title + ", price=" + price + ", company=" + company + "]";
	}
	

}
