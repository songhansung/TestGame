package kr.green.game.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.game.dao.BasketDao;
import kr.green.game.vo.BasketVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

@Service
public class BasketServiceImp implements BasketService{
	@Autowired
	BasketDao basketDao;

	@Override
	public ArrayList<BasketVo> basketList(UserVo user) {
		
		return basketDao.getBasketList(user);
	}
}
