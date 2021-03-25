package kr.green.game.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AmountVo {
	private int amountNum;
	private int point;
	private String id;
	private Date registerDate;
	
	
	public int getAmountNum() {
		return amountNum;
	}
	public void setAmountNum(int amountNum) {
		this.amountNum = amountNum;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRegisterDate() {
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String dateString = simpleFormat.format(registerDate);
		return dateString;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public void setRegisterDate(String registerDate) throws ParseException {
		SimpleDateFormat simpleFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		this.registerDate = simpleFormat2.parse(registerDate);
	}
	@Override
	public String toString() {
		return "AmountVo [amountNum=" + amountNum + ", point=" + point + ", id=" + id + ", registerDate=" + registerDate
				+ "]";
	}
	
}

