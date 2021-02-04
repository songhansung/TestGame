package kr.green.game.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.game.dao.GameDao;
import kr.green.game.vo.GameVo;

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

}
