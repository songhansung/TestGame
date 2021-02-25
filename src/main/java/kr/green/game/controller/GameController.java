package kr.green.game.controller;

import java.awt.List;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
import kr.green.game.vo.DiscountVo;
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
		ArrayList<ImgVo> imglist = gameService.getImglist(cri);
		//페이지정보
		PageMaker pm = new PageMaker(cri,displayPageNum,totalCount);
		
		mv.addObject("pm",pm);
		mv.addObject("list", list);
		mv.addObject("imglist", imglist);

		mv.setViewName("/game/game");
		return mv;
	}
	
	//할인기능
	@ResponseBody
	@RequestMapping(value = "/game/discount", method = RequestMethod.POST)
	public String discountPost(@RequestParam(value="checkArray[]") ArrayList<Integer> arrayParams,HttpServletRequest request
			,@RequestParam("discount")int discount, @RequestParam("discountTime")String discountTime) throws ParseException{		
		UserVo user = userService.getUser(request);
		DiscountVo dis = new DiscountVo(discount, discountTime);
		gameService.updageSale(arrayParams, user,dis);
	
		return "success";
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
		ArrayList<ImgVo> imglist = gameService.getImglist(game);
		UserVo user = userService.getUser(request);
		
		mv.addObject("imglist",imglist);
		mv.addObject("game",game);
		mv.setViewName("/game/detail");
		return mv;
	}
	//장바구니 기능
	@RequestMapping(value = "/game/detail", method = RequestMethod.POST)
	public ModelAndView detailPost(ModelAndView mv,Integer gameNum,HttpServletRequest request) {
		UserVo user = userService.getUser(request);
		GameVo game = gameService.getgame(gameNum);
		
		gameService.getbasket(user,game);
		
		mv.addObject("gameNum",gameNum);
		mv.setViewName("redirect:/game/detail");
		return mv;
	}
	//구매기능
	
	@RequestMapping(value = "/game/buy", method = RequestMethod.POST)
	public ModelAndView buyPost(ModelAndView mv,HttpServletRequest request,Integer gameNum) {
		UserVo user = userService.getUser(request);
		GameVo game = gameService.getgame(gameNum);
		gameService.getBuy(user,game);
		gameService.plusbuy(user,game);
		
		request.getSession().setAttribute("user", user);	
		mv.addObject("gameNum",gameNum);
		mv.setViewName("redirect:/game/detail");
		return mv;
	}
	@RequestMapping(value = "/game/modify", method = RequestMethod.GET)
	public ModelAndView modifyGet(ModelAndView mv,Integer gameNum) {
		GameVo game = gameService.getgame(gameNum);
		ArrayList<ImgVo> imglist = gameService.getImglist(game);

		mv.addObject("imglist",imglist);
		System.out.println(imglist);
		mv.addObject("game",game);
		mv.setViewName("/game/modify");
		return mv;
	}
	@RequestMapping(value = "/game/modify", method = RequestMethod.POST)
	public ModelAndView modifyPost(ModelAndView mv,GameVo game,MultipartFile[] filelist,MultipartFile Mfilelist) throws IOException, Exception {
		gameService.modifyGame(game);
		ArrayList<ImgVo> imglist = gameService.getImglist(game);
		
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
		mv.addObject("imglist",imglist);
		mv.setViewName("redirect:/game/game");
		return mv;
		
	}
	//삭제기능
	@RequestMapping(value = "/game/delete", method = RequestMethod.GET)
	public ModelAndView deleteGet(ModelAndView mv,Integer gameNum) {
		gameService.deleteGame(gameNum);
		mv.setViewName("redirect:/game/game");
		return mv;
	}
	//구매목록
	@RequestMapping(value = "/library", method = RequestMethod.GET)
	public ModelAndView libraryGet(ModelAndView mv,HttpServletRequest request,GameVo game) {
		UserVo user = userService.getUser(request);
		ArrayList<BuyVo> buyList = gameService.buyGameList(game,user);
		
		mv.addObject("buyList",buyList);

		mv.setViewName("/main/library");
		return mv;
	}
	@RequestMapping(value = "/game/list", method = RequestMethod.GET)
	public ModelAndView listGet(ModelAndView mv,Criteria cri) {
		int displayPageNum = 2;
		int totalCount = gameService.getTotalCount(cri);
		
		
		ArrayList<GameVo> list = gameService.getGameList(cri); 
		ArrayList<DiscountVo>dislist = gameService.getDisList(list);
		ArrayList<ImgVo> imglist =gameService.getImglist(cri);
		 
		PageMaker pm = new PageMaker(cri,displayPageNum,totalCount);
		
		mv.addObject("pm",pm);
		mv.addObject("list", list);
		mv.addObject("imglist", imglist);
		mv.addObject("dislist", dislist);

		mv.setViewName("/game/list");
		return mv;
	}
	
}
