package kr.green.game.vo;

public class BuyVo {
	private int buyNum;
	private int gameNum;
	private String id;
	private String isbuy;
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
	@Override
	public String toString() {
		return "BuyVo [buyNum=" + buyNum + ", gameNum=" + gameNum + ", id=" + id + ", isbuy=" + isbuy + "]";
	}
}
