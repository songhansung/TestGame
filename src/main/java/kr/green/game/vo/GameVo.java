package kr.green.game.vo;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class GameVo {
	private int gameNum;
	private String title;
	private String content;
	private String longcontent;
	private int price;
	private int disprice;
	private Date launch;
	private String company;
	private String tags;
	private String isdel;
	private String isdiscount;
	private int origameNum;
	private int oder;
	private String mainview;
	private int discount;
	private String isimg;
	private String filename;
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
	public String getLongcontent() {
		return longcontent;
	}
	public void setLongcontent(String longcontent) {
		this.longcontent = longcontent;
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
	public String getLaunch() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = simpleFormat.format(launch);
		return dateString;
		//return launch;
	}
	public void setLaunch(Date launch) {
		this.launch = launch;
	}
	public void setLaunch(String launch) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd");
		this.launch = (Date) simpleFormat2.parse(launch);
		//System.out.println(launch);
		//System.out.println(this.launch);
		//this.launch = Date.valueOf(launch);
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
	public String getMainview() {
		return mainview;
	}
	public void setMainview(String mainview) {
		this.mainview = mainview;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getIsimg() {
		return isimg;
	}
	public void setIsimg(String isimg) {
		this.isimg = isimg;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	@Override
	public String toString() {
		return "GameVo [gameNum=" + gameNum + ", title=" + title + ", content=" + content + ", longcontent="
				+ longcontent + ", price=" + price + ", disprice=" + disprice + ", launch=" + launch + ", company="
				+ company + ", tags=" + tags + ", isdel=" + isdel + ", isdiscount=" + isdiscount + ", origameNum="
				+ origameNum + ", oder=" + oder + ", mainview=" + mainview + ", discount=" + discount + ", isimg="
				+ isimg + ", filename=" + filename + "]";
	}

}
