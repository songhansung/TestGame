package kr.green.game.service;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.game.dao.GameDao;
import kr.green.game.dao.UserDao;
import kr.green.game.pagination.Criteria;
import kr.green.game.vo.BasketVo;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.DiscountVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgSlideVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.LikesVo;
import kr.green.game.vo.RelikeVo;
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
		ImgVo img = gameDao.getmainimg(game);
		ArrayList <ImgVo> sublist = gameDao.getImgAlllist(game);
		
		String name = img.getFilename();
		
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
		System.out.println("tt1:"+game.getLaunch());
		System.out.println("tt2:"+origame.getLaunch());
//		//그전 첨부파일 삭제
//		if(name != img.getFilename()) {
//			gameDao.deleteFile(origame.getGameNum());
//		}
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
	//장바구니 추가 기능
	@Override
	public boolean getbasket(UserVo user, GameVo game,boolean ok) {
		if(user == null) {
			return false;
		}
		//장바구니에 검색하여
		BasketVo tmp = gameDao.getBasket(game.getGameNum(),user.getId());
		//장바구니에 담겨있으면
		if(tmp != null) {
		//리턴함
			return false;
		}
		//장바구니에 추가
		if(ok)
			gameDao.insertBasket(user,game);
		return true;
	}
	//첨부파일 수정목록에서 추가 기능
	@Override
	public void modifyFile(int gameNum, String originalFilename, String path, String isimg) {
		gameDao.insertFile(gameNum,originalFilename,path,isimg);
	}

	@Override
	public ArrayList<BuyVo> buyGameList(UserVo user) {
		ArrayList<BuyVo> buylist = gameDao.getBuyList(user);
		return buylist;
	}
	@Override
	public int buyGameList(GameVo game, UserVo user) {
		if(user == null) {
			return 0;
		}
		ArrayList<BuyVo> buylist = gameDao.getBuyList(user);
		int cnt = 0;
		for(BuyVo tmp : buylist) {
			if(tmp.getGameNum() == game.getGameNum()) {
				cnt++;
			}
		}
		return cnt;
	}

	@Override
	public void getBuy(UserVo user, GameVo game) {
		int money = user.getMoney();
		int price = game.getPrice();
		int disprice = game.getDisprice();	
		
		if(disprice == 0) {
			if(money < price) {
				return;
			}
			user.setMoney(money-price);	
		}else {
			if(money < disprice) {
				return;
			}
			user.setMoney(money-disprice);
		}		
		userDao.updateUser(user);
	}

	@Override
	public void plusbuy(UserVo user, GameVo game) {
		gameDao.insertBuy(user,game);
		
	}
	//할인기능
	@Override
	public void updageSale(ArrayList<Integer> arrayParams, UserVo user, DiscountVo dis) {
		
		
		if(user.getRating() != 10) {
			return;
		}
		/*
		 * System.out.println(dis); System.out.println(arrayParams);
		 */
		for(Integer tmp : arrayParams) {
			GameVo gameTmp = gameDao.getgame(tmp);
			/* System.out.println(gameTmp); */
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
	public ArrayList<GameVo> seletMList() {
		ArrayList<GameVo> gamelist = gameDao.selectMList();		
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

	//메인화면 이미지 출력
	@Override
	public ArrayList<ImgSlideVo> getImgSlideList(ArrayList<ImgVo> mimg) {
		ArrayList<ImgSlideVo> imglist = new ArrayList<ImgSlideVo>();
		ImgSlideVo isVo = null;

		for(ImgVo tmp : mimg) {
			//Isimg에 M이랑 비교하여
			if(tmp.getIsimg().equals("M")) {
				//isVo 가 널이아니면 isVo를 가지고 list를 추가
				if(isVo != null) {
					imglist.add(isVo);
				}
				//isVo에 새로운 SlideVo를 생성 하여 Main에 저장
				isVo = new ImgSlideVo();
				isVo.setMain(tmp);
				//M이 아닐시 sub에 사이즈는 4보다 작다 나머지를 isVo에 저장
			}else {
				if(isVo.getSub().size() < 4) {
					isVo.add(tmp);
				}
			}
		}
		//반복문이 끝나면 리스트에 isVo를 add에 저장
		imglist.add(isVo);
		return imglist;
	}


	@Override
	public ArrayList<ImgSlideVo> seletDistcountList(int count) {
		
		ArrayList<ImgVo> discountImgList = gameDao.selectDiscountImgList(count);
		
		return getImgSlideList(discountImgList);
	}

	@Override
	public ArrayList<ImgSlideVo> getTapmainlist(int count) {
		
		ArrayList<ImgVo> tapmainlist = gameDao.selectTapmainlist(count);
		
		return getImgSlideList(tapmainlist);
	}

	@Override
	public ArrayList<ImgSlideVo> getTapsublist(int count) {
		
		ArrayList<ImgVo> tapsublist = gameDao.selectTapsublist(count);
		
		return getImgSlideList(tapsublist);
	}

	@Override
	public DiscountVo getDiscount(GameVo game) {
		DiscountVo gameDis = gameDao.selectDiscount(game);
		
		return gameDis;
	}

	@Override
	public ImgVo getmainimg(GameVo game) {
		return gameDao.getmainimg(game);
	}

	@Override
	public void deleteFile(Integer mImgNum) {
		gameDao.deleteMainimg(mImgNum);
		
	}
	//서브이미지 를가져와서 배열에없으면 업데이트 있으면삭제
	@Override
	public void updateSubImgList(int gameNum, Integer[] sImgNum) {
		ArrayList<ImgVo> itmp = gameDao.selectSublist(gameNum);
		ArrayList<Integer> sImgNumList = new ArrayList<Integer>(Arrays.asList(sImgNum));
		
		for(ImgVo tmp : itmp) {
			if(sImgNumList.indexOf(tmp.getImgNum()) == -1){
				//tmp를 삭제처리
				gameDao.updateimgisdel(tmp.getImgNum());
			}
		}
		/* gameDao.updateSubImg(gameNum,sImgNum); */
	}

	@Override
	public void deletediscount(GameVo game, DiscountVo dis) {
		gameDao.updateisdiscount(game);
		gameDao.deletediscount(dis);
	}

	@Override
	public ArrayList<ImgVo> getImgmsSublist(ArrayList<GameVo> list) {
		ArrayList<ImgVo> msSubList = gameDao.selectmsSubList(list);
		return msSubList;
	}
	//메인화면에 서브이미지 출력
	@Override
	public ArrayList<ImgSlideVo> getImgSlideSubList(ArrayList<ImgVo> msubimg) {
		ArrayList<ImgSlideVo> imglist = new ArrayList<ImgSlideVo>();
		ImgSlideVo isVo = null;

		for(ImgVo tmp : msubimg) {
			//Isimg에 M이랑 비교하여
			if(tmp.getIsimg().equals("M")) {
				//isVo 가 널이아니면 isVo를 가지고 list를 추가
				if(isVo != null) {
					imglist.add(isVo);
				}
				//isVo에 새로운 SlideVo를 생성 하여 Main에 저장
				isVo = new ImgSlideVo();
				isVo.setMain(tmp);
				//M이 아닐시 sub에 사이즈는 4보다 작다 나머지를 isVo에 저장
			}else {
				if(isVo.getSub().size() < 4) {
					isVo.add(tmp);
				}
			}
		}
		//반복문이 끝나면 리스트에 isVo를 add에 저장
		imglist.add(isVo);
		return imglist;
	}

	@Override
	public void insertlike(LikesVo likes) {
		gameDao.insertLike(likes);		
	}

	@Override
	public LikesVo getLikes(Integer gameNum, String id) {
		LikesVo likes = gameDao.selectLikes(gameNum,id);
		return likes;
	}

	@Override
	public void insertRelike(RelikeVo like) {
		gameDao.insertRelike(like);	
	}

	@Override
	public LikesVo seletUserLikes(int gameNum, String id) {
		LikesVo like = gameDao.selectUserLikes(gameNum,id);
		return like;
	}

	@Override
	public RelikeVo getRelike(int likeNum, String id) {
		RelikeVo like = gameDao.selectRelike(likeNum,id);
		return like;
	}

	@Override
	public void updateRelike(RelikeVo like) {
		gameDao.updateRelike(like);
		
	}

	@Override
	public ArrayList<LikesVo> getRightLikeList(Integer gameNum) {
		ArrayList<LikesVo> likes = gameDao.selectRightLikeList(gameNum);
		
		return likes;
	}

	@Override
	public ArrayList<LikesVo> getlikeList(Integer gameNum, RelikeVo relike) {
		ArrayList<LikesVo> getlikeList = gameDao.selectLikesList(gameNum, relike);
	
		return getlikeList;
	}


	/*
	 * @Override public RelikeVo getRelike(LikesVo likes) { RelikeVo relike =
	 * gameDao.selectRelike(likes); return relike; }
	 */




	




//	@Override
//	public ArrayList<ImgSlideVo> getImgsubSlideList(ArrayList<GameVo> sublist) {
//		ArrayList<ImgSlideVo> imglist = new ArrayList<ImgSlideVo>();
//		ImgSlideVo isVo = null;
//		for(GameVo tmp : sublist) {
//			
//		}
//		imglist.add(isVo);		
//		return imglist;
//	}


}
