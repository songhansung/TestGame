package kr.green.game.vo;

public class ImgVo {
	private int imgNum;
	private int gameNum;
	private String oriFilename;
	private String filename;
	private String isimg;
	private String isdel;
	private String title;
	private int price;
	private int disprice;
	private int discount;
	public int getImgNum() {
		return imgNum;
	}
	public void setImgNum(int imgNum) {
		this.imgNum = imgNum;
	}
	public int getGameNum() {
		return gameNum;
	}
	public void setGameNum(int gameNum) {
		this.gameNum = gameNum;
	}
	public String getOriFilename() {
		return oriFilename;
	}
	public void setOriFilename(String oriFilename) {
		this.oriFilename = oriFilename;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getIsimg() {
		return isimg;
	}
	public void setIsimg(String isimg) {
		this.isimg = isimg;
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
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
	public int getDisprice() {
		return disprice;
	}
	public void setDisprice(int disprice) {
		this.disprice = disprice;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	@Override
	public String toString() {
		return "ImgVo [imgNum=" + imgNum + ", gameNum=" + gameNum + ", oriFilename=" + oriFilename + ", filename="
				+ filename + ", isimg=" + isimg + ", isdel=" + isdel + ", title=" + title + ", price=" + price
				+ ", disprice=" + disprice + ", discount=" + discount + "]";
	}

	
}
