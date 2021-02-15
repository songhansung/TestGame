package kr.green.game.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.game.dao.UserDao;
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

}
