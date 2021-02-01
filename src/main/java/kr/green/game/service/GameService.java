package kr.green.game.service;

import java.util.ArrayList;

import kr.green.game.vo.GameVo;

public interface GameService {

	void registerGame(GameVo game);

	ArrayList<GameVo> getGameList();

}
