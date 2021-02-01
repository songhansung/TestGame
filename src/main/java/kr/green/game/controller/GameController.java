package kr.green.game.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.game.service.GameService;
import kr.green.game.utils.UploadFileUtils;
import kr.green.game.vo.GameVo;

@Controller
public class GameController {
	@Autowired
	GameService gameService;
	
	@RequestMapping(value = "/game/game", method = RequestMethod.GET)
	public ModelAndView gameGet(ModelAndView mv) {
		//게임정보를 담는 리스트
		ArrayList<GameVo> list = gameService.getGameList();
		mv.addObject("list", list);
		mv.setViewName("/game/game");
		return mv;
	}
	@RequestMapping(value = "/game/register", method = RequestMethod.GET)
	public ModelAndView registerGet(ModelAndView mv) {
		mv.setViewName("/game/register");
		return mv;
	}
	@RequestMapping(value = "/game/register", method = RequestMethod.POST)
	public ModelAndView registerPost(ModelAndView mv,GameVo game) {
		gameService.registerGame(game);
		mv.setViewName("redirect:/game/game");
		return mv;
	}
}
