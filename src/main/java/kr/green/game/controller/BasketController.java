package kr.green.game.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.game.service.BasketService;
import kr.green.game.service.GameService;
import kr.green.game.service.UserService;
import kr.green.game.vo.BasketVo;
import kr.green.game.vo.GameVo;

@Controller
public class BasketController {
	@Autowired
	GameService gameService;
	@Autowired
	private UserService userService;
	@Autowired
	private BasketService basketService;
	
	@RequestMapping(value = "/basket", method = RequestMethod.GET)
	public ModelAndView basketGet(ModelAndView mv,Integer gameNum,HttpSession session) {
		
		ArrayList<BasketVo> bList = basketService.basketList(gameNum);
		
		mv.addObject("bList",bList);
		mv.setViewName("/basket/basket");
		return mv;
	}
}
