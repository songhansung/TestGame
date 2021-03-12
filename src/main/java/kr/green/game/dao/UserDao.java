package kr.green.game.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.game.pagination.Criteria;
import kr.green.game.vo.CustomerVo;
import kr.green.game.vo.UserVo;

public interface UserDao {

	public void insertUser(@Param("user")UserVo user);

	public UserVo getUser(@Param("id")String id);

	public void updateMoney(@Param("money")int amount,@Param("user") UserVo user);

	public void updateUser(@Param("user")UserVo user);

	public void insertCustomer(@Param("user") UserVo user, @Param("cus") CustomerVo cus);

	public int getTotalCount(@Param("cri")Criteria cri);

	public ArrayList<CustomerVo> getcuslist(@Param("user")UserVo user, @Param("cri") Criteria cri);

	public ArrayList<CustomerVo> getobjcuslist(@Param("cri") Criteria cri);

	public CustomerVo getcus(@Param("cusNum")Integer cusNum);

	public void updatecus(@Param("cus") CustomerVo oricus);

}
