package kr.green.game.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.game.pagination.Criteria;
import kr.green.game.vo.AmountVo;
import kr.green.game.vo.CustomerVo;
import kr.green.game.vo.UserVo;

public interface UserService {

	boolean signup(UserVo user);

	UserVo isUser(String id, String pw);

	UserVo getUser(HttpServletRequest request);

	void userMoney(int amount, UserVo user);

	void customerUser(UserVo user, CustomerVo cus);

	int getTotalCount(Criteria cri);

	ArrayList<CustomerVo> getcuslist(UserVo user, Criteria cri);

	ArrayList<CustomerVo> getobjcuslist(Criteria cri);
	
	CustomerVo getCustomer(Integer cusNum);

	void setCustomer(CustomerVo cus);

	AmountVo setAmount(int amount, UserVo user);

	ArrayList<AmountVo> getAmountList(UserVo user);



}
