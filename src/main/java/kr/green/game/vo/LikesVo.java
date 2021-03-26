package kr.green.game.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LikesVo {
	private int likeNum;
	private int gameNum;
	private String id;
	private int up;
	private String content;
	private Date registerDate;
	private String isdel;
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
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
	public int getUp() {
		return up;
	}
	public void setUp(int up) {
		this.up = up;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegisterDate() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = simpleFormat.format(registerDate);
		return dateString;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public void setRegisterDate(String registerDate) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd");
		this.registerDate = simpleFormat2.parse(registerDate);
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}
	@Override
	public String toString() {
		return "LikesVo [likeNum=" + likeNum + ", gameNum=" + gameNum + ", id=" + id + ", up=" + up + ", content="
				+ content + ", registerDate=" + registerDate + ", isdel=" + isdel + "]";
	}


	
}
