package kr.green.game.vo;

import java.util.Date;

public class DiscountVo {
	private int disNum;
	private int gameNum;
	private int discount;
	private Date discountTime;
	private String isdiscount;
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
	public Date getDiscountTime() {
		return discountTime;
	}
	public void setDiscountTime(Date discountTime) {
		this.discountTime = discountTime;
	}
	public String getIsdiscount() {
		return isdiscount;
	}
	public void setIsdiscount(String isdiscount) {
		this.isdiscount = isdiscount;
	}
	@Override
	public String toString() {
		return "DiscountVo [disNum=" + disNum + ", gameNum=" + gameNum + ", discount=" + discount + ", discountTime="
				+ discountTime + ", isdiscount=" + isdiscount + "]";
	}
}
