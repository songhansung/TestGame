package kr.green.game.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.game.service.GameService;
import kr.green.game.service.UserService;

@Controller
public class BasketController {
	@Autowired
	GameService gameService;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/basket", method = RequestMethod.GET)
	public ModelAndView loginGet(ModelAndView mv) {
		
		mv.setViewName("/basket/basket");
		return mv;
	}
}
