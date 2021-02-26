package kr.green.game.dao;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.green.game.pagination.Criteria;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.DiscountVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
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

	ArrayList<BuyVo> getBuyList(@Param("game")GameVo game,@Param("user") UserVo user);

	void insertBuy(@Param("user")UserVo user,@Param("game") GameVo game);

	void insertDiscount(@Param("dis")DiscountVo dis,@Param("game") GameVo game);

	void insertdiscount(@Param("game")GameVo gameTmp,@Param("dis") DiscountVo dis);

	void updateDisprice(@Param("game")GameVo gameTmp);

	ArrayList<ImgVo> getImgAlllist(@Param("game")GameVo game);

	DiscountVo getDiscount(@Param("gameNum")int gameNum);

	ArrayList<ImgVo> getMimgList(@Param("game")GameVo game);

	void updateMainView(@Param("game")GameVo game);

	void updateMaindelete(@Param("game")GameVo game);

	ArrayList<GameVo> selectMList(@Param("game") ArrayList<GameVo> game);

	ArrayList<ImgVo> selectmsList(@Param("game")ArrayList<GameVo> list);


	/* void reDeleteFile(@Param("gameNum")int gameNum); */

}
