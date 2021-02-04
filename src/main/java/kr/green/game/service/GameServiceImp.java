package kr.green.game.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.game.dao.GameDao;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;

@Service
public class GameServiceImp implements GameService{
	@Autowired
	GameDao gameDao;

	@Override
	public void registerGame(GameVo game) {
		gameDao.insertGame(game);
	}

	@Override
	public ArrayList<GameVo> getGameList() {
		ArrayList<GameVo> list = gameDao.getGameList();
		return list;
	}

	@Override
	public void registerFile(int gameNum, String originalFilename, String path) {
		gameDao.insertFile(gameNum,originalFilename,path);
	}

	@Override
	public GameVo getgame(Integer gameNum) {
		if(gameNum == null) {
			return null;
		}
		GameVo game = gameDao.getgame(gameNum);
		return game;
	}

	@Override
	public ArrayList<ImgVo> getImglist(Integer gameNum) {
		if(gameNum == null) {
			return null;
		}
		return gameDao.getImglist(gameNum); 
	}

}
