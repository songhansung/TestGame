package kr.green.game.service;

import kr.green.game.vo.UserVo;

public interface UserService {

	boolean signup(UserVo user);

	UserVo isUser(String id, String pw);

}
