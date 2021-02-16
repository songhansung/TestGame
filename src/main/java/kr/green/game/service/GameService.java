package kr.green.game.service;

import java.util.ArrayList;

import kr.green.game.pagination.Criteria;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

public interface GameService {

	void registerGame(GameVo game);

	ArrayList<GameVo> getGameList(Criteria cri);

	void registerFile(int gameNum, String originalFilename, String path, String isimg);

	GameVo getgame(Integer gameNum);

	ArrayList<ImgVo> getImglist(Integer gameNum);

	void modifyGame(GameVo game);

	void deleteGame(Integer gameNum);

	ArrayList<ImgVo> getImglist();

	int getTotalCount(Criteria cri);

	void getbasket(UserVo user, GameVo game);

	void modifyFile(int gameNum, String originalFilename, String path, String isimg);

	ArrayList<BuyVo> buyGameList(GameVo game, UserVo user);

	void getBuy(UserVo user, GameVo game);

	void plusbuy(UserVo user, GameVo game);

}
