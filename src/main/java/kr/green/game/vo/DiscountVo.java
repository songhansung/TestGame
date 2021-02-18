package kr.green.game.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DiscountVo {
	private int disNum;
	private int gameNum;
	private int discount;
	private Date discountTime;
	public DiscountVo(int discount2, String discountTime2) throws ParseException {
		discount = discount2;
		setDiscountTime(discountTime2);
	}
	public int getDisNum() {
		return disNum;
	}
	public void setDisNum(int disNum) {
		this.disNum = disNum;
	}
	public int getGameNum() {
		return gameNum;
	}
	public void setGameNum(int gameNum) {
		this.gameNum = gameNum;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getDiscountTime() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = simpleFormat.format(discountTime);
		return dateString;
	}
	public void setDiscountTime(String discountTime) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyyMMdd");
		this.discountTime = simpleFormat2.parse(discountTime);
	}
	@Override
	public String toString() {
		return "DiscountVo [disNum=" + disNum + ", gameNum=" + gameNum + ", discount=" + discount + ", discountTime="
				+ discountTime + "]";
	}	
}
