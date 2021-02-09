package kr.green.game.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.game.dao.BasketDao;
import kr.green.game.vo.BasketVo;

@Service
public class BasketServiceImp implements BasketService{
	@Autowired
	BasketDao basketDao;

	@Override
	public ArrayList<BasketVo> basketList(Integer gameNum) {
		ArrayList<BasketVo> bList = basketDao.getBasketList(gameNum);
		return bList;
	}
}
