package kr.green.game.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.game.pagination.Criteria;
import kr.green.game.service.BasketService;
import kr.green.game.service.GameService;
import kr.green.game.service.UserService;
import kr.green.game.utils.UploadFileUtils;
import kr.green.game.vo.BasketVo;
import kr.green.game.vo.BuyVo;
import kr.green.game.vo.GameVo;
import kr.green.game.vo.ImgVo;
import kr.green.game.vo.UserVo;
import kr.green.game.pagination.PageMaker;

@Controller
public class GameController {
	@Autowired
	GameService gameService;
	@Autowired
	private UserService userService;
	@Autowired
	BasketService basketService;
	
	private String uploadPath ="D:\\java_SHS\\git\\TestGame\\src\\main\\webapp\\resources\\img";
	
	@RequestMapping(value = "/game/game", method = RequestMethod.GET)
	public ModelAndView gameGet(ModelAndView mv,Integer gameNum,Criteria cri) {
		int displayPageNum = 2;
		int totalCount = gameService.getTotalCount(cri);
		
		//게임정보를 담는 리스트(페이지정보포함)
		ArrayList<GameVo> list = gameService.getGameList(cri);
		//이미지리스트
		ArrayList<ImgVo> imglist = gameService.getImglist();
		//페이지정보
		PageMaker pm = new PageMaker(cri,displayPageNum,totalCount);
		
		mv.addObject("pm",pm);
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
	public ModelAndView detailGet(ModelAndView mv,Integer gameNum,HttpServletRequest request) {
		GameVo game = gameService.getgame(gameNum);
		ArrayList<ImgVo> imglist = gameService.getImglist(gameNum);
		UserVo user = userService.getUser(request);
		
		mv.addObject("imglist",imglist);
		mv.addObject("game",game);
		mv.setViewName("/game/detail");
		return mv;
	}
	@RequestMapping(value = "/game/detail", method = RequestMethod.POST)
	public ModelAndView detailPost(ModelAndView mv,Integer gameNum,HttpServletRequest request) {
		UserVo user = userService.getUser(request);
		GameVo game = gameService.getgame(gameNum);
		
		gameService.getbasket(user,game);
		
		mv.setViewName("redirect:/game/detail");
		return mv;
	}
	@RequestMapping(value = "/game/buy", method = RequestMethod.POST)
	public ModelAndView buyPost(ModelAndView mv,HttpServletRequest request,GameVo game) {
		
		mv.setViewName("redirect:/game/detail");
		return mv;
	}
	@RequestMapping(value = "/game/modify", method = RequestMethod.GET)
	public ModelAndView modifyGet(ModelAndView mv,Integer gameNum) {
		GameVo game = gameService.getgame(gameNum);
		ArrayList<ImgVo> imglist = gameService.getImglist(gameNum);
		
		System.out.println(imglist);
		mv.addObject("imglist",imglist);
		mv.addObject("game",game);
		mv.setViewName("/game/modify");
		return mv;
	}
	@RequestMapping(value = "/game/modify", method = RequestMethod.POST)
	public ModelAndView modifyPost(ModelAndView mv,GameVo game,MultipartFile[] filelist,MultipartFile Mfilelist) throws IOException, Exception {
		gameService.modifyGame(game);
		
		if(Mfilelist != null && Mfilelist.getOriginalFilename().length() > 0) {
			String path = UploadFileUtils.uploadFile(uploadPath, Mfilelist.getOriginalFilename(),Mfilelist.getBytes());
			gameService.modifyFile(game.getGameNum(),Mfilelist.getOriginalFilename(),path,"M");
		}
		if(filelist != null && filelist.length != 0) {
			for(MultipartFile file : filelist) {
				if(file != null && file.getOriginalFilename().length() != 0) {
					String path = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(),file.getBytes());
					gameService.modifyFile(game.getGameNum(),file.getOriginalFilename(),path,"S");					
				}	
			}
		}
		
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
