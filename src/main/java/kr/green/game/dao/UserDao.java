package kr.green.game.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.game.vo.UserVo;

public interface UserDao {

	void insertUser(@Param("user")UserVo user);

	UserVo getUser(@Param("id")String id);

}
