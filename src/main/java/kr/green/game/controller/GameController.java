package kr.green.game.controller;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.game.service.GameService;
import kr.green.game.utils.UploadFileUtils;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;

@Controller
public class GameController {
	@Autowired
	GameService gameService;
	
	private String uploadPath ="D:\\java_SHS\\git\\TestGame\\src\\main\\webapp\\resources\\img";
	
	@RequestMapping(value = "/game/game", method = RequestMethod.GET)
	public ModelAndView gameGet(ModelAndView mv,Integer gameNum) {
		//게임정보를 담는 리스트
		ArrayList<GameVo> list = gameService.getGameList();
		ArrayList<ImgVo> imglist = gameService.getImglist();
		
		mv.addObject("list", list);
		mv.addObject("imglist", imglist);

		mv.setViewName("/game/game");
		return mv;
	}
	@RequestMapping(value = "/game/register", method = RequestMethod.GET)
	public ModelAndView registerGet(ModelAndView mv) {
		mv.setViewName("/game/register");
		return mv;
	}
	@ResponseBody
	@RequestMapping(value = "/game/register", method = RequestMethod.POST)
	public ModelAndView registerPost(ModelAndView mv,GameVo game,MultipartFile[] filelist,MultipartFile Mfilelist) throws IOException, Exception {
		
		gameService.registerGame(game);
		if(Mfilelist != null && Mfilelist.getOriginalFilename().length() >= 0) {
			String path = UploadFileUtils.uploadFile(uploadPath, Mfilelist.getOriginalFilename(),Mfilelist.getBytes());
			gameService.registerFile(game.getGameNum(),Mfilelist.getOriginalFilename(),path,"M");
		}
		if(filelist != null && filelist.length != 0) {
			for(MultipartFile file : filelist) {
				if(file != null && file.getOriginalFilename().length() != 0) {
					String path = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(),file.getBytes());
					gameService.registerFile(game.getGameNum(),file.getOriginalFilename(),path,"S");
					
				}	
			}
		}
		
		mv.addObject("Mfilelist",Mfilelist);
		mv.addObject("filelist",filelist);
		mv.setViewName("redirect:/game/game");
		return mv;
	}
	@RequestMapping(value = "/game/detail", method = RequestMethod.GET)
	public ModelAndView detailGet(ModelAndView mv,Integer gameNum) {
		GameVo game = gameService.getgame(gameNum);
		ArrayList<ImgVo> imglist = gameService.getImglist(gameNum);
		
		mv.addObject("imglist",imglist);
		mv.addObject("game",game);
		mv.setViewName("/game/detail");
		return mv;
	}
	@RequestMapping(value = "/game/modify", method = RequestMethod.GET)
	public ModelAndView modifyGet(ModelAndView mv,Integer gameNum) {
		GameVo game = gameService.getgame(gameNum);
		ArrayList<ImgVo> imglist = gameService.getImglist(gameNum);
		
		mv.addObject("imglist",imglist);
		mv.addObject("game",game);
		mv.setViewName("/game/modify");
		return mv;
	}
	@RequestMapping(value = "/game/modify", method = RequestMethod.POST)
	public ModelAndView modifyPost(ModelAndView mv,GameVo game) {
		gameService.modifyGame(game);
		mv.setViewName("redirect:/game/game");
		return mv;
	}
	@RequestMapping(value = "/game/delete", method = RequestMethod.GET)
	public ModelAndView deleteGet(ModelAndView mv,Integer gameNum) {
		gameService.deleteGame(gameNum);
		mv.setViewName("redirect:/game/game");
		return mv;
	}
}
