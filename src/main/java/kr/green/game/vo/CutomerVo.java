package kr.green.game.vo;

import java.util.Date;

public class CutomerVo {
	private int cusNum;
	private String id;
	private String title;
	private String content;
	private Date quiryDate;
	private String isdel;
	public int getCusNum() {
		return cusNum;
	}
	public void setCusNum(int cusNum) {
		this.cusNum = cusNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getQuiryDate() {
		return quiryDate;
	}
	public void setQuiryDate(Date quiryDate) {
		this.quiryDate = quiryDate;
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}
	@Override
	public String toString() {
		return "CutomerVo [cusNum=" + cusNum + ", id=" + id + ", title=" + title + ", content=" + content
				+ ", quiryDate=" + quiryDate + ", isdel=" + isdel + "]";
	}
	
}
