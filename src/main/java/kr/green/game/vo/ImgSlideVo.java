package kr.green.game.vo;

import java.util.ArrayList;

public class ImgSlideVo {
	ImgVo main;
	ArrayList<ImgVo> sub;
	
	public ImgSlideVo() {
		sub = new ArrayList<ImgVo>();
	}
	
	public ImgVo getMain() {
		return main;
	}
	public void setMain(ImgVo main) {
		this.main = main;
	}
	public ArrayList<ImgVo> getSub() {
		return sub;
	}
	public void setSub(ArrayList<ImgVo> sub) {
		this.sub = sub;
	}
	public void add(ImgVo tmp) {
		sub.add(tmp);
	}
	@Override
	public String toString() {
		return "ImgSlideVo [main=" + main + ", sub=" + sub + "]";
	}
		
	
}
