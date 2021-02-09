package kr.green.game.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import kr.green.game.vo.BasketVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

public interface BasketDao {
	
	ArrayList<BasketVo> getBasketList(@Param("user")UserVo user);
}
