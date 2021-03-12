package kr.green.game.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CustomerVo {
	private int cusNum;
	private String id;
	private String title;
	private String content;
	private String objcontent;
	private Date registerDate;
	private Date objregisterDate;
	private String isdel;
	private String kind;
	private String processing;
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
	public String getObjcontent() {
		return objcontent;
	}
	public void setObjcontent(String objcontent) {
		this.objcontent = objcontent;
	}
	public String getRegisterDate() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String dateString = simpleFormat.format(registerDate);
		return dateString;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public void setRegisterDate(String registerDate) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		this.registerDate = simpleFormat2.parse(registerDate);
	}
	public String getObjRegisterDate() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String dateString = simpleFormat.format(registerDate);
		return dateString;
	}
	public void setObjRegisterDate(Date objregisterDate) {
		this.objregisterDate = objregisterDate;
	}
	public void setObjRegisterDate(String objregisterDate) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		this.objregisterDate = simpleFormat2.parse(objregisterDate);
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getProcessing() {
		return processing;
	}
	public void setProcessing(String processing) {
		this.processing = processing;
	}
	@Override
	public String toString() {
		return "CustomerVo [cusNum=" + cusNum + ", id=" + id + ", title=" + title + ", content=" + content
				+ ", objcontent=" + objcontent + ", registerDate=" + registerDate + ", objregisterDate="
				+ objregisterDate + ", isdel=" + isdel + ", kind=" + kind + ", processing=" + processing + "]";
	}
	
	
}
