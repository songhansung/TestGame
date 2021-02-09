package kr.green.game.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.game.pagination.Criteria;
import kr.green.game.service.BasketService;
import kr.green.game.service.GameService;
import kr.green.game.service.UserService;
import kr.green.game.vo.BasketVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;

@Controller
public class BasketController {
	@Autowired
	GameService gameService;
	@Autowired
	private UserService userService;
	@Autowired
	private BasketService basketService;
	
	@RequestMapping(value = "/basket", method = RequestMethod.GET)
	public ModelAndView basketGet(ModelAndView mv,HttpServletRequest request) {
		
		UserVo user = userService.getUser(request);
		ArrayList<BasketVo> bList = basketService.basketList(user);
		
		mv.addObject("bList",bList);
		
		System.out.println(bList);
		mv.setViewName("/basket/basket");
		return mv;
	}
}
