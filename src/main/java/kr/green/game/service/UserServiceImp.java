package kr.green.game.service;

import java.text.ParseException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.game.dao.UserDao;
import kr.green.game.pagination.Criteria;
import kr.green.game.vo.AmountVo;
import kr.green.game.vo.CustomerVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.UserVo;

@Service
public class UserServiceImp implements UserService{
	@Autowired
	private UserDao userDao;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Override
	public boolean signup(UserVo user) {
		UserVo tmp = userDao.getUser(user.getId());
		if(tmp != null) {
			return false;
		}
		String encPw = passwordEncoder.encode(user.getPw());
		user.setPw(encPw);
		userDao.insertUser(user);
		return true;
	}

	@Override
	public UserVo isUser(String id, String pw) {
		UserVo user = userDao.getUser(id);
		if(user == null) {
			return null;
		}
		if(passwordEncoder.matches(pw, user.getPw())) {
			return user;//비밀번호가 같아서 회원
		}
		return null;
	}

	@Override
	public UserVo getUser(HttpServletRequest request) {
		
		return (UserVo)request.getSession().getAttribute("user");
	}

	@Override
	public void userMoney(int amount, UserVo user) {
		userDao.updateMoney(amount, user);
		
	}

	@Override
	public void customerUser(UserVo user,CustomerVo cus) {
		userDao.insertCustomer(user,cus);
		
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return userDao.getTotalCount(cri);
	}

	@Override
	public ArrayList<CustomerVo> getcuslist(UserVo user,Criteria cri) {
		ArrayList<CustomerVo> cuslist = userDao.getcuslist(user,cri);
		
		return cuslist;
	}

	@Override
	public ArrayList<CustomerVo> getobjcuslist(Criteria cri) {
		ArrayList<CustomerVo> cuslist = userDao.getobjcuslist(cri);
		return cuslist;
	}

	@Override
	public CustomerVo getCustomer(Integer cusNum) {
		if(cusNum == null) {
			return null;
		}
		CustomerVo cus = userDao.getcus(cusNum);
		return cus;
	}

	@Override
	public void setCustomer(CustomerVo cus) {
		CustomerVo oricus = userDao.getcus(cus.getCusNum());
		/* System.out.println(oricus); */
		if(oricus == null) {
			return;
		}
		oricus.setObjcontent(cus.getObjcontent());
		oricus.setProcessing("답변 완료");
		
		userDao.updatecus(oricus);
		
	}

	@Override
	public AmountVo setAmount(int amount, UserVo user) {
		AmountVo sys = userDao.insertAmount(amount,user);
		return sys;
	}

	@Override
	public ArrayList<AmountVo> getAmountList(UserVo user) {
		return userDao.getAmountList(user);
	}

	@Override
	public void updateUser(UserVo user) {
		if(user == null) {
			return;
		}
		//암호화
		String encodePw = passwordEncoder.encode(user.getPw());
		user.setPw(encodePw);
		userDao.updateUser(user);
		
	}

	@Override
	public UserVo getUser(String id) {
		UserVo user = userDao.getUser(id);
		return user;
	}


}
