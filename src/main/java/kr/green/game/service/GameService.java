package kr.green.game.service;

import java.util.ArrayList;

import kr.green.game.pagination.Criteria;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.DiscountVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgSlideVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.LikesVo;
import kr.green.game.vo.RelikeVo;
import kr.green.game.vo.UserVo;

public interface GameService {

	void registerGame(GameVo game);

	ArrayList<GameVo> getGameList(Criteria cri);

	void registerFile(int gameNum, String originalFilename, String path, String isimg);

	GameVo getgame(Integer gameNum);

	ArrayList<ImgVo> getImglist(Criteria cri);

	void modifyGame(GameVo game);

	void deleteGame(Integer gameNum);

	int getTotalCount(Criteria cri);

	boolean getbasket(UserVo user, GameVo game,boolean ok);

	void modifyFile(int gameNum, String originalFilename, String path, String isimg);

	ArrayList<BuyVo> buyGameList(UserVo user);
	
	int buyGameList(GameVo game, UserVo user);

	void getBuy(UserVo user, GameVo game);

	void plusbuy(UserVo user, GameVo game);

	void updageSale(ArrayList<Integer> arrayParams, UserVo user, DiscountVo dis);

	ArrayList<ImgVo> getImglist(GameVo game);

	ArrayList<DiscountVo> getDisList(ArrayList<GameVo> list);

	ArrayList<ImgVo> getMList(GameVo game);

	void getMainView(GameVo game);

	void getMaindelete(GameVo game);

	ArrayList<GameVo> seletMList();

	ArrayList<ImgVo> getImgmslist(ArrayList<GameVo> list);

	ArrayList<ImgSlideVo> getImgSlideList(ArrayList<ImgVo> mimg);

	ArrayList<ImgSlideVo> seletDistcountList(int count);

	ArrayList<ImgSlideVo> getTapmainlist(int count);

	ArrayList<ImgSlideVo> getTapsublist(int count);

	DiscountVo getDiscount(GameVo game);

	ImgVo getmainimg(GameVo game);

	void deleteFile(Integer mImgNum);

	void updateSubImgList(int gameNum, Integer[] sImgNum);

	void deletediscount(GameVo game, DiscountVo dis);

	ArrayList<ImgVo> getImgmsSublist(ArrayList<GameVo> list);

	ArrayList<ImgSlideVo> getImgSlideSubList(ArrayList<ImgVo> msubimg);

	void insertlike(LikesVo likes);

	LikesVo getLikes(Integer gameNum, String id);

	ArrayList<LikesVo> getlikeList(Integer gameNum, RelikeVo relike);

	void insertRelike(RelikeVo like);

	LikesVo seletUserLikes(int gameNum, String id);

	RelikeVo getRelike(int likeNum, String id);

	void updateRelike(RelikeVo like);

	ArrayList<LikesVo> getRightLikeList(Integer gameNum);

	


	/* RelikeVo getRelike(LikesVo likes); */








	/* ArrayList<ImgSlideVo> getImgsubSlideList(ArrayList<GameVo> sublist); */


	
}
