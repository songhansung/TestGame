package kr.green.game.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.game.vo.UserVo;

public interface UserDao {

	public void insertUser(@Param("user")UserVo user);

	public UserVo getUser(@Param("id")String id);

	public void updateMoney(@Param("money")int amount,@Param("user") UserVo user);

	public void updateUser(@Param("user")UserVo user);

}
