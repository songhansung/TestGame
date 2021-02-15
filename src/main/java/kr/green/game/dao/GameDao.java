package kr.green.game.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.game.pagination.Criteria;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

public interface GameDao {

	void insertGame(@Param("game")GameVo game);

	ArrayList<GameVo> getGameList(@Param("cri")Criteria cri);

	void insertFile(@Param("gameNum")int gameNum,@Param("filename") String originalFilename,@Param("path") String path,@Param("isimg") String isimg);

	GameVo getgame(@Param("gameNum")Integer gameNum);

	ArrayList<ImgVo> getImglist(@Param("gameNum")Integer gameNum);

	void updateGame(@Param("game")GameVo origame);

	ArrayList<ImgVo> getImgList();

	int getTotalCount(@Param("cri")Criteria cri);

	void insertBasket(@Param("user")UserVo user,@Param("game")GameVo game);

	void updateFile(@Param("gameNum")int gameNum,@Param("filename") String originalFilename,@Param("path") String path,@Param("isimg") String isimg);

	void deleteFile(@Param("gameNum")int gameNum);

}
