package kr.green.game.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BuyVo {
	private int buyNum;
	private int gameNum;
	private String id;
	private String isbuy;
	private String title;
	private int price;
	private String filename;
	private Date registerDate;
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
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getBuyNum() {
		return buyNum;
	}
	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
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
	public String getIsbuy() {
		return isbuy;
	}
	public void setIsbuy(String isbuy) {
		this.isbuy = isbuy;
	}
	public String getRegisterDate() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String dateString = simpleFormat.format(registerDate);
		return dateString;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public void setRegisterDate(String registerDate) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		this.registerDate = simpleFormat2.parse(registerDate);
	}
	@Override
	public String toString() {
		return "BuyVo [buyNum=" + buyNum + ", gameNum=" + gameNum + ", id=" + id + ", isbuy=" + isbuy + ", title="
				+ title + ", price=" + price + ", filename=" + filename + ", registerDate=" + registerDate + "]";
	}

}
