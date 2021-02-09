package kr.green.game.service;

import java.util.ArrayList;

import kr.green.game.vo.BasketVo;
import kr.green.game.vo.GameVo;

public interface BasketService {

	ArrayList<BasketVo> basketList(Integer gameNum);

}
