package kr.green.game.vo;

public class BasketVo {
	private int basketNum;
	private int gameNum;
	private String id;
	private String isdel;
	public int getBasketNum() {
		return basketNum;
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
		return "BasketVo [basketNum=" + basketNum + ", gameNum=" + gameNum + ", id=" + id + ", isdel=" + isdel + "]";
	}
}
