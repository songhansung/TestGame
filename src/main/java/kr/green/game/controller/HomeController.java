package kr.green.game.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.game.service.UserService;
import kr.green.game.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private UserService userService;
	//메인뷰
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView openTilesView(ModelAndView mv) {
		mv.setViewName("/main/home");
		mv.addObject("setHeader","타일즈");
		return mv;
	}
	//로그인뷰
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginGet(ModelAndView mv) {
		mv.setViewName("/login/login");
		mv.addObject("setHeader","타일즈");
		return mv;
	}
	//로그인 기능
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPost(ModelAndView mv,UserVo user) {
		//UserService 에게 UserVo의 아이디와 비밀번호를 가져오라고시킴 
		UserVo isUser = userService.isUser(user.getId(),user.getPw());
		mv.addObject("user", isUser);
		//isUser의 정보가 null이아니면 메인으로 없으면 로그인창으로
		if(isUser != null) {
			mv.setViewName("redirect:/");			
		}else {
			mv.setViewName("redirect:/login");
		}
		System.out.println(isUser);
		return mv;
	}
	//회원가입 뷰
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signupGet(ModelAndView mv) {
		mv.setViewName("/login/signup");
		mv.addObject("setHeader","타일즈");
		return mv;
	}
    //회원가입 기능 DB에 회원정보를넘겨줌	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signupPost(ModelAndView mv,UserVo user) {
		boolean signup = userService.signup(user);
		if(signup) {
			mv.setViewName("redirect:/signup");			
		}else {
			mv.setViewName("redirect:/");
		}
		return mv;
	}
}
