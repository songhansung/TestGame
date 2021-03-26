package kr.green.game.vo;

public class RelikeVo {
	private int relikeNum;
	private int likeNum;
	private String id;
	private int reup;
	
	public int getRelikeNum() {
		return relikeNum;
	}
	public void setRelikeNum(int relikeNum) {
		this.relikeNum = relikeNum;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public int getReup() {
		return reup;
	}
	public void setReup(int reup) {
		this.reup = reup;
	}
	@Override
	public String toString() {
		return "RelikeVo [relikeNum=" + relikeNum + ", likeNum=" + likeNum + ", id=" + id + ", reup=" + reup + "]";
	}
	
}
	