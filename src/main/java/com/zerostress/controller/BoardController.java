package com.zerostress.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zerostress.board.service.BoardService;
import com.zerostress.command.RecommendVO;
import com.zerostress.command.ReviewVO;
import com.zerostress.review.service.ReviewService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
	@Autowired
	@Qualifier("reviewService")
	private ReviewService reviewService;
	
	@RequestMapping("/board_detail")
	public String board_detail() {
		return "board/board_detail";
	}
	
	@RequestMapping("/board_modal")
	public String map_modal() {
		return "board/board_modal";
	}
	
	@RequestMapping("/board_list")
	public String board_list() {
		return "board/board_list";
	}
	
	@RequestMapping("/recommend")
	public String recommend(@RequestParam("title") String title, Model model) {
		System.out.println(title);
		RecommendVO vo = boardService.recommend(title);
		System.out.println(vo.toString());
		model.addAttribute("vo",vo);
		return "mbti/mbti_board_detail";
	}
	
	@RequestMapping("/boardForm")
	public String boardForm(@RequestParam("contentId") String contentId, Model model) {
		model.addAttribute("contentId",contentId);
		return "board/board_detail";
	}

	@ResponseBody
	@RequestMapping("/modal_modify")
	public ReviewVO modal_modify(@RequestParam("rno")int rno) {
	      
	ReviewVO vo = reviewService.modal_modify(rno);
	      
	return vo;
	}
}
