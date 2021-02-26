package kr.green.game.service;

import java.text.ParseException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.game.dao.GameDao;
import kr.green.game.dao.UserDao;
import kr.green.game.pagination.Criteria;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.DiscountVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgSlideVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

@Service
public class GameServiceImp implements GameService{
	@Autowired
	GameDao gameDao;
	@Autowired
	UserDao userDao;
	@Override
	public void registerGame(GameVo game) {
		gameDao.insertGame(game);
	}
	
	@Override
	public ArrayList<GameVo> getGameList(Criteria cri) {
		ArrayList<GameVo> list = gameDao.getGameList(cri);
		return list;
	}
	
	//제품등록에서 첨부파일 추가기능
	@Override
	public void registerFile(int gameNum, String originalFilename, String path, String isimg) {
		gameDao.insertFile(gameNum,originalFilename,path,isimg);
	}
	@Override
	public GameVo getgame(Integer gameNum) {
		if(gameNum == null) {
			return null;
		}
		GameVo game = gameDao.getgame(gameNum);
		return game;
	}
	//게임번호에따른 이미지 불러오는기능
	@Override
	public ArrayList<ImgVo> getImglist(Criteria cri) {
		if(cri == null) {
			return null;
		}
		return gameDao.getImglist(cri); 
	}
	// 수정기능
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
		origame.setLaunch(game.getLaunch());
		origame.setCompany(game.getCompany());
		origame.setTags(game.getTags());
		gameDao.updateGame(origame);
		//그전 첨부파일 삭제
		gameDao.deleteFile(origame.getGameNum());
		//그전 데이터 DB삭제
		/* gameDao.reDeleteFile(origame.getGameNum()); */
	}
	//삭제기능
	@Override
	public void deleteGame(Integer gameNum) {
		if(gameNum == null) {
			return;
		}
		GameVo game = gameDao.getgame(gameNum);
		game.setIsdel("Y");
		gameDao.updateGame(game);
		
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return gameDao.getTotalCount(cri);
	}

	@Override
	public void getbasket(UserVo user, GameVo game) {
		
		gameDao.insertBasket(user,game);
	}
	//첨부파일 수정목록에서 추가 기능
	@Override
	public void modifyFile(int gameNum, String originalFilename, String path, String isimg) {
		gameDao.insertFile(gameNum,originalFilename,path,isimg);
	}

	@Override
	public ArrayList<BuyVo> buyGameList(GameVo game, UserVo user) {
		ArrayList<BuyVo> buylist = gameDao.getBuyList(game,user);
		return buylist;
	}

	@Override
	public void getBuy(UserVo user, GameVo game) {
		int money = user.getMoney();
		int price = game.getPrice();
		if(money < price) {
			return;
		}
		user.setMoney(money-price);
		userDao.updateUser(user);
	}

	@Override
	public void plusbuy(UserVo user, GameVo game) {
		gameDao.insertBuy(user,game);
		
	}
	@Override
	public void updageSale(ArrayList<Integer> arrayParams, UserVo user, DiscountVo dis) {
		
		
		if(user.getRating() != 10) {
			return;
		}
		System.out.println(dis);
		System.out.println(arrayParams);
		for(Integer tmp : arrayParams) {
			GameVo gameTmp = gameDao.getgame(tmp);
			System.out.println(gameTmp);
			//할인 정보 추가
			gameDao.insertdiscount(gameTmp,dis);
			//게임 가격 할인 비용 및 할인 여부 업데이트
			int price = gameTmp.getPrice();
			int sale = dis.getDiscount();
			double num = sale / 100.0;
			gameTmp.setDisprice( (int)(price * (1-num)));
			
			gameDao.updateDisprice(gameTmp);
		}
	}

	@Override public ArrayList<ImgVo> getImglist(GameVo game) { 
		if(game ==null) { 
			return null; 
		} 
		return gameDao.getImgAlllist(game); 
	}

	@Override
	public ArrayList<DiscountVo> getDisList(ArrayList<GameVo> list) {
		ArrayList<DiscountVo> disList = new ArrayList<DiscountVo>();
		for(GameVo tmp : list) {
			DiscountVo discountVo = gameDao.getDiscount(tmp.getGameNum());
			if(discountVo != null) {
				disList.add(discountVo);
			}
		}
		return disList;
	}

	@Override
	public ArrayList<ImgVo> getMList(GameVo game) {
		if(game == null) {
			return null;
		}
		return gameDao.getMimgList(game);
	}
	//메인등록여부 M으로변경
	@Override
	public void getMainView(GameVo game) {
		if(game == null) {
			return;
		}
		gameDao.updateMainView(game);
	}
	//메인등록여부 N으로 변경
	@Override
	public void getMaindelete(GameVo game) {
		if(game == null) {
			return;
		}
		gameDao.updateMaindelete(game);
		
	}

	@Override
	public ArrayList<GameVo> seletMList(ArrayList<GameVo> game) {
		ArrayList<GameVo> gamelist = gameDao.selectMList(game);		
		/*
		 * for(GameVo tmp : gamelist) { System.out.println(tmp); }
		 */
		return gamelist;
	}

	@Override
	public ArrayList<ImgVo> getImgmslist(ArrayList<GameVo> list) {
		ArrayList<ImgVo> msList = gameDao.selectmsList(list);
		/* for(ImgVo tmp : msList) { System.out.println(tmp);} */
		return msList;
	}

	@Override
	public ArrayList<ImgSlideVo> getImgSlideList(ArrayList<ImgVo> mimg) {
		ArrayList<ImgSlideVo> list = new ArrayList<ImgSlideVo>();
		ImgSlideVo isVo = null;

		for(ImgVo tmp : mimg) {
			if(tmp.getIsimg().equals("M")) {
				if(isVo != null) {
					list.add(isVo);
				}
				isVo = new ImgSlideVo();
				isVo.setMain(tmp);
			}else {
				if(isVo.getSub().size() < 4) {
					isVo.add(tmp);
				}
			}
		}
		list.add(isVo);
		return list;
	}

}
