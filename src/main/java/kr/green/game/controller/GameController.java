package kr.green.game.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GameController {
	@RequestMapping(value = "/game", method = RequestMethod.GET)
	public ModelAndView gameGet(ModelAndView mv) {
		mv.setViewName("/game/game");
		return mv;
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerGet(ModelAndView mv) {
		mv.setViewName("/game/register");
		return mv;
	}
}
