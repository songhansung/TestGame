package kr.green.game.controller;

import java.io.IOException;
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
	
	private String uploadPath ="D:\\java_SHS\\gameimg";
	
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
	public ModelAndView registerPost(ModelAndView mv,GameVo game,MultipartFile[] filelist) throws IOException, Exception {
		gameService.registerGame(game);
		
		if(filelist != null && filelist.length != 0) {
			for(MultipartFile file : filelist) {
				if(file != null && file.getOriginalFilename().length() != 0) {
					String path = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(),file.getBytes());
					gameService.registerFile(game.getGameNum(),file.getOriginalFilename(),path);
				}
			}
		}
		
		mv.setViewName("redirect:/game/game");
		return mv;
	}
	@RequestMapping(value = "/game/detail", method = RequestMethod.GET)
	public ModelAndView detailGet(ModelAndView mv) {
		mv.setViewName("/game/detail");
		return mv;
	}
}
