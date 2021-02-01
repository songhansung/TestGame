package kr.green.game.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class GameVo {
	private int gameNum;
	private String title;
	private String content;
	private int price;
	private Date launch;
	private String company;
	private String tags;
	private String isdel;
	private String isdiscount;
	private int origameNum;
	private int oder;
	public int getGameNum() {
		return gameNum;
	}
	public void setGameNum(int gameNum) {
		this.gameNum = gameNum;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getLaunch() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = simpleFormat.format(launch);
		return dateString;
	}
	public void setLaunch(String launch) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyyMMdd");
		this.launch = simpleFormat2.parse(launch);
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}
	public String getIsdiscount() {
		return isdiscount;
	}
	public void setIsdiscount(String isdiscount) {
		this.isdiscount = isdiscount;
	}
	public int getOrigameNum() {
		return origameNum;
	}
	public void setOrigameNum(int origameNum) {
		this.origameNum = origameNum;
	}
	public int getOder() {
		return oder;
	}
	public void setOder(int oder) {
		this.oder = oder;
	}
	@Override
	public String toString() {
		return "GameVo [gameNum=" + gameNum + ", title=" + title + ", content=" + content + ", price=" + price
				+ ", launch=" + launch + ", company=" + company + ", tags=" + tags + ", isdel=" + isdel
				+ ", isdiscount=" + isdiscount + ", origameNum=" + origameNum + ", oder=" + oder + "]";
	}
	
}
