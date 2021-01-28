package kr.green.game.service;

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
		String encPw = passwordEncoder.encode(user.getPw());
		user.setPw(encPw);
		userDao.insertUser(user);
		return false;
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

}
