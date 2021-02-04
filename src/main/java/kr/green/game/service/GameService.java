package kr.green.game.service;

import java.util.ArrayList;

import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;

public interface GameService {

	void registerGame(GameVo game);

	ArrayList<GameVo> getGameList();

	void registerFile(int gameNum, String originalFilename, String path);

	GameVo getgame(Integer gameNum);

	ArrayList<ImgVo> getImglist(Integer gameNum);

}
