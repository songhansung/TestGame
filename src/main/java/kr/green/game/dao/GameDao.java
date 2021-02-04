package kr.green.game.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.game.vo.GameVo;

public interface GameDao {

	void insertGame(@Param("game")GameVo game);

	ArrayList<GameVo> getGameList();

	void insertFile(@Param("gameNum")int gameNum,@Param("filename") String originalFilename,@Param("path") String path);

}
