package kr.green.game.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.game.vo.BasketVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

public interface BasketService {

	ArrayList<BasketVo> basketList(UserVo user);

}
