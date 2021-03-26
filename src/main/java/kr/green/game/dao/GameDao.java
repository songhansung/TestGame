package kr.green.game.dao;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

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

public interface GameDao {

	void insertGame(@Param("game")GameVo game);

	ArrayList<GameVo> getGameList(@Param("cri")Criteria cri);

	void insertFile(@Param("gameNum")int gameNum,@Param("filename") String originalFilename,@Param("path") String path,@Param("isimg") String isimg);

	GameVo getgame(@Param("gameNum")Integer gameNum);

	ArrayList<ImgVo> getImglist(@Param("cri")Criteria cri);

	void updateGame(@Param("game")GameVo origame);

	ArrayList<ImgVo> getImgList();

	int getTotalCount(@Param("cri")Criteria cri);

	void insertBasket(@Param("user")UserVo user,@Param("game")GameVo game);

	void updateFile(@Param("gameNum")int gameNum,@Param("filename") String originalFilename,@Param("path") String path,@Param("isimg") String isimg);

	void deleteFile(@Param("gameNum")int gameNum);

	ArrayList<BuyVo> getBuyList(@Param("user") UserVo user);

	void insertBuy(@Param("user")UserVo user,@Param("game") GameVo game);

	void insertDiscount(@Param("dis")DiscountVo dis,@Param("game") GameVo game);

	void insertdiscount(@Param("game")GameVo gameTmp,@Param("dis") DiscountVo dis);

	void updateDisprice(@Param("game")GameVo gameTmp);

	ArrayList<ImgVo> getImgAlllist(@Param("game")GameVo game);

	DiscountVo getDiscount(@Param("gameNum")int gameNum);

	ArrayList<ImgVo> getMimgList(@Param("game")GameVo game);

	void updateMainView(@Param("game")GameVo game);

	void updateMaindelete(@Param("game")GameVo game);

	ArrayList<GameVo> selectMList();

	ArrayList<ImgVo> selectmsList(@Param("game")ArrayList<GameVo> list);

	BasketVo getBasket(@Param("gameNum")int gameNum,@Param("id") String id);

	ArrayList<GameVo> selectDiscountGameList(@Param("count") int count);

	ArrayList<ImgVo> selectDiscountImgList(@Param("count") int count);

	ArrayList<ImgVo> selectTapmainlist(@Param("count")int count);

	ArrayList<ImgVo> selectTapsublist(@Param("count")int count);

	DiscountVo selectDiscount(@Param("game")GameVo game);

	ImgVo getmainimg(@Param("game") GameVo game);

	void deleteMainimg(@Param("imgNum")Integer mImgNum);

	ArrayList<ImgVo> selectSublist(@Param("gameNum") int gameNum);

	void updateimgisdel(@Param("imgNum") int imgNum);

	void updateisdiscount(@Param("game")GameVo game);

	void deletediscount(@Param("dis")DiscountVo dis);

	ArrayList<ImgVo> selectmsSubList(@Param("game") ArrayList<GameVo> list);

	void insertLike(@Param("likes")LikesVo likes);

	LikesVo selectLikes(@Param("gameNum")Integer gameNum,@Param("id") String id);

	ArrayList<LikesVo> selectLikesList(@Param("gameNum")Integer gameNum,@Param("cri") Criteria cri);

	void insertRelike(@Param("like")RelikeVo like);

	LikesVo selectUserLikes(@Param("gameNum")int gameNum,@Param("id") String id);

	RelikeVo selectRelike(@Param("likeNum")int likeNum,@Param("id") String id);

	void updateRelike(@Param("like")RelikeVo like);

	/* RelikeVo selectRelike(@Param("likes")LikesVo likes); */











	/* void reDeleteFile(@Param("gameNum")int gameNum); */

}
