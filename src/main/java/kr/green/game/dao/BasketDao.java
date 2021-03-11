package kr.green.game.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import kr.green.game.vo.BasketVo;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

public interface BasketDao {
	
	ArrayList<BasketVo> getBasketList(@Param("user")UserVo user);

	ArrayList<BuyVo> selectBuylist(@Param("user") UserVo user);
	/*
	 * BasketVo selectbas(@Param("user")UserVo user);
	 */

	void updatebasket(@Param("tmp") BasketVo tmp);

	/* void updatebasket(@Param("baslist") ArrayList<BasketVo> baslist); */
}
