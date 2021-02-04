package kr.green.game.vo;

public class ImgVo {
	private int imgNum;
	private int gameNum;
	private String oriFilename;
	private String filename;
	private String isimg;
	private String isdel;
	public int getImgNum() {
		return imgNum;
	}
	public void setImgNum(int imgNum) {
		this.imgNum = imgNum;
	}
	public int getGameNum() {
		return gameNum;
	}
	public void setGameNum(int gameNum) {
		this.gameNum = gameNum;
	}
	public String getOriFilename() {
		return oriFilename;
	}
	public void setOriFilename(String oriFilename) {
		this.oriFilename = oriFilename;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getIsimg() {
		return isimg;
	}
	public void setIsimg(String isimg) {
		this.isimg = isimg;
	}
	public String getIsdel() {
		return isdel;
	}
	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}
	@Override
	public String toString() {
		return "ImgVo [imgNum=" + imgNum + ", gameNum=" + gameNum + ", oriFilename=" + oriFilename + ", filename="
				+ filename + ", isimg=" + isimg + ", isdel=" + isdel + "]";
	}
}
