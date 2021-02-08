package kr.green.game.service;

import java.text.ParseException;
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

	@Override
	public void modifyGame(GameVo game) {
		GameVo origame = gameDao.getgame(game.getGameNum());
		if(origame == null) {
			return;
		}
		origame.setTitle(game.getTitle());
		origame.setContent(game.getContent());
		origame.setLongcontent(game.getLongcontent());
		origame.setPrice(game.getPrice());
		try {
			origame.setLaunch(game.getLaunch());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		origame.setCompany(game.getCompany());
		origame.setTags(game.getTags());
		gameDao.updateGame(origame);
	}

	@Override
	public void deleteGame(Integer gameNum) {
		if(gameNum == null) {
			return;
		}
		GameVo game = gameDao.getgame(gameNum);
		game.setIsdel("Y");
		gameDao.updateGame(game);
		
	}

}
