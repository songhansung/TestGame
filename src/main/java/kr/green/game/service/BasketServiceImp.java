package kr.green.game.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.cj.x.protobuf.MysqlxCrud.Update;

import kr.green.game.dao.BasketDao;
import kr.green.game.vo.BasketVo;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

@Service
public class BasketServiceImp implements BasketService{
	@Autowired
	BasketDao basketDao;
	
	@Override
	public ArrayList<BasketVo> basketList(UserVo user) {
		ArrayList<BasketVo> baslist = basketDao.getBasketList(user);
		ArrayList<BuyVo> buylist = basketDao.selectBuylist(user);
		
		for(BasketVo tmp : baslist) {
			for(BuyVo tms : buylist) {
				if(tmp.getGameNum() == tms.getGameNum()) {
					tmp.setIsdel("Y");
					basketDao.updatebasket(tmp);
				}
			}
		}
				
		return baslist;
	}

	@Override
	public ArrayList<BuyVo> getBuylist(BasketVo basket, UserVo user) {
		ArrayList<BuyVo> buylist = basketDao.selectBuylist(user);
		
		return buylist;
	}
}
