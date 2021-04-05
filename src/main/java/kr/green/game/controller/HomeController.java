package kr.green.game.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.game.pagination.Criteria;
import kr.green.game.pagination.PageMaker;
import kr.green.game.service.GameService;
import kr.green.game.service.UserService;
import kr.green.game.vo.AmountVo;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.CustomerVo;
import kr.green.game.vo.DiscountVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgSlideVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private UserService userService;
	@Autowired
	GameService gameService;
	
	//메인뷰
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView openTilesView(ModelAndView mv,Integer gameNum,ArrayList<GameVo> game) {
		
		ArrayList<GameVo> list = gameService.seletMList();
		//메인 슬라이드
		ArrayList<ImgVo> mimg = gameService.getImgmslist(list);
		//메인 서브 슬라이드
		ArrayList<ImgVo> msubimg = gameService.getImgmsSublist(list);
		//메인 슬라이드
		ArrayList<ImgSlideVo> imgSlideList = gameService.getImgSlideList(mimg);
		//메인 서브 슬라이드
		ArrayList<ImgSlideVo> imgSlidesubList = gameService.getImgSlideSubList(msubimg);
		
		//할인 슬라이드 ()안에숫자는 최대가져오는수
		ArrayList<ImgSlideVo> sublist = gameService.seletDistcountList(12);
		ArrayList<ImgSlideVo> tapmainlist = gameService.getTapmainlist(6);
		ArrayList<ImgSlideVo> tapsublist = gameService.getTapsublist(50);

		mv.setViewName("/main/home");
		mv.addObject("msimg",imgSlideList);
		mv.addObject("mimg",mimg);
		mv.addObject("msubimg",imgSlidesubList);
		mv.addObject("sublist",sublist);
		mv.addObject("tapmainlist",tapmainlist);
		mv.addObject("tapsublist",tapsublist);
		mv.addObject("setHeader","타일즈");
		
		
		/*
		 * for(ImgVo tmp : mimg) { System.out.println(tmp); }
		 */
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
		return mv;
	}
	//로그아웃
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public ModelAndView singoutGet(ModelAndView mv, HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		mv.setViewName("redirect:/");
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
			mv.setViewName("redirect:/");			
		}else {
			mv.setViewName("redirect:/signup");
		}
		return mv;
	}
	//마이페이지뷰
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public ModelAndView mypageGet(ModelAndView mv,HttpServletRequest request) {
		UserVo user = userService.getUser(request);
		ArrayList<BuyVo> buylist = gameService.buyGameList(user);
		ArrayList<AmountVo> amountlist = userService.getAmountList(user);
		if(user == null) {
			mv.setViewName("redirect:/");
		}
		mv.addObject("buylist",buylist);
		mv.addObject("amountlist",amountlist);
		mv.setViewName("/main/mypage");
		return mv;
	}
	//충전뷰
	@RequestMapping(value = "/game/charging", method = RequestMethod.GET)
	public ModelAndView buyGet(ModelAndView mv,HttpServletRequest request) {
		mv.setViewName("/game/charging");
		return mv;
	}
	//충전 에이잭스
	@ResponseBody
	@RequestMapping(value = "/charge/point", method = RequestMethod.POST)
	public String chargePost(@RequestParam("amount")int amount,HttpServletRequest request,AmountVo sys) {
		System.out.println(amount);
		System.out.println(userService.getUser(request));
		UserVo user = userService.getUser(request);
		
		userService.userMoney(amount,user);
		sys = userService.setAmount(amount,user);
		
		/* ArrayList<AmountVo> amountlist = userService.setAmount(amount,user); */
		/* 세션에 amount 정보를 같이보내줘야함*/
		request.getSession().setAttribute("user", user);
		
		return "success";
	}
	//고객센터 뷰
	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public ModelAndView customerGet(ModelAndView mv,HttpServletRequest request) {
		UserVo user = userService.getUser(request);
//		mv.addObject("user",user);
		mv.setViewName("/main/customer");
		return mv;
	}
	//고객센터문의 유저뷰
	@RequestMapping(value = "/customerUser", method = RequestMethod.GET)
	public ModelAndView customerUserGet(ModelAndView mv,HttpServletRequest request) {
		UserVo user = userService.getUser(request);
		mv.setViewName("/main/customerUser");
		return mv;
	}
	//문의 게시판 등록기능
	@RequestMapping(value = "/customerUser", method = RequestMethod.POST)
	public ModelAndView customerUserPost(ModelAndView mv,HttpServletRequest request,CustomerVo cus) {
		UserVo user = userService.getUser(request);
		userService.customerUser(user,cus);		
		mv.setViewName("redirect:/customer");
		return mv;
	}
	//유저문의게시판 리스트
	@RequestMapping(value = "/cuslistUser", method = RequestMethod.GET)
	public ModelAndView cuslistUserGet(ModelAndView mv,HttpServletRequest request,Criteria cri) {
		int displayPageNum = 2;
		int totalCount = userService.getTotalCount(cri);
		UserVo user = userService.getUser(request);
		//유저 정보에따른 리스트
		ArrayList<CustomerVo> cuslist = userService.getcuslist(user,cri);
		
		PageMaker pm = new PageMaker(cri,displayPageNum,totalCount);
		
		mv.addObject("cuslist",cuslist);
		mv.addObject("pm",pm);
		mv.setViewName("/main/cuslistUser");
		return mv;
	}
	//유저문의 상세보기
		@RequestMapping(value = "/customerUserDetali", method = RequestMethod.GET)
		public ModelAndView customerUserDetaliGet(ModelAndView mv,HttpServletRequest request, Integer cusNum) {
			UserVo user = userService.getUser(request);
			CustomerVo cus = userService.getCustomer(cusNum);
			mv.addObject("cus",cus);
			mv.setViewName("/main/customerUserDetali");
			return mv;
		}
	//관리자문의게시판 리스트
	@RequestMapping(value = "/cuslistObj", method = RequestMethod.GET)
	public ModelAndView cuslistobjGet(ModelAndView mv,HttpServletRequest request,Criteria cri) {
		int displayPageNum = 2;
		int totalCount = userService.getTotalCount(cri);
		//모든유저 문의리스트
		ArrayList<CustomerVo> objcuslist = userService.getobjcuslist(cri);
		UserVo user = userService.getUser(request);
		
		if(user == null) {
			mv.setViewName("redirect:/");
		}
		
		PageMaker pm = new PageMaker(cri,displayPageNum,totalCount);
		mv.addObject("list",objcuslist);
		mv.addObject("pm",pm);
		mv.setViewName("/main/cuslistObj");
		return mv;
	}
	
	//고객센터답변 관리자뷰
	@RequestMapping(value = "/customerObj", method = RequestMethod.GET)
	public ModelAndView customerObjGet(ModelAndView mv,HttpServletRequest request, Integer cusNum) {
		UserVo user = userService.getUser(request);
		CustomerVo cus = userService.getCustomer(cusNum);
		mv.addObject("cus",cus);
		mv.setViewName("/main/customerObj");
		return mv;
	}
	//답변하기 기능 관리자
	@RequestMapping(value = "/customerObj", method = RequestMethod.POST)
	public ModelAndView customerObjPost(ModelAndView mv,HttpServletRequest request, CustomerVo cus) {
		/* System.out.println("문의"+cus); */
		userService.setCustomer(cus);		
		mv.setViewName("redirect:/cuslistObj");
		return mv;
	}
	//비밀번호변경
	@RequestMapping(value = "/user/modify", method = RequestMethod.POST)
	public ModelAndView userModifyPost(ModelAndView mv,HttpServletRequest request, UserVo user) {
		userService.updateUser(user);
		
		//request.getSession().setAttribute("user", user);
		request.getSession().removeAttribute("user");
		mv.setViewName("redirect:/");
		return mv;
	}
	//아이디중복검사
	@RequestMapping(value ="/dup", method = RequestMethod.POST)
	@ResponseBody
	public String dupPost(String id){
		UserVo user = userService.getUser(id);
	    if(user == null) {
	    	return "not user";
	    }
	    return "user";
	}
	//아이디,비밀번호확인
	@RequestMapping(value ="/sub", method = RequestMethod.POST)
	@ResponseBody
	public String subPost(String id,String pw){
		UserVo user = userService.getUsers(id,pw);
	    if(user == null) {
	    	return "not user";
	    }
	    return "user";
	}
	
	
}
