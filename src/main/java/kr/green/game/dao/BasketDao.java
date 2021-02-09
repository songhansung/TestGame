package kr.green.game.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.game.vo.BasketVo;

public interface BasketDao {

	ArrayList<BasketVo> getBasketList(@Param("gameNum")Integer gameNum);

}
