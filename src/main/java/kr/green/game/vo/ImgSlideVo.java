package kr.green.game.vo;

import java.util.ArrayList;

public class ImgSlideVo {
	ImgVo main;
	ArrayList<ImgVo> sub;
	GameVo contents;
	DiscountVo discount;
	
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
	
	public GameVo getContents() {
		return contents;
	}

	public void setContents(GameVo contents) {
		this.contents = contents;
	}

	public DiscountVo getDiscount() {
		return discount;
	}

	public void setDiscount(DiscountVo discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "ImgSlideVo [main=" + main + ", sub=" + sub + "]";
	}

	

		
	
}
