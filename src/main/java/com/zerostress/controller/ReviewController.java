package com.zerostress.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zerostress.command.ReviewVO;
import com.zerostress.review.service.ReviewService;
@Controller
@RequestMapping("/review")
public class ReviewController {

	@Autowired
	@Qualifier("reviewService")
	private ReviewService reviewService;
	
	@ResponseBody
	@PostMapping("/reviewRegist")
	public int reviewRegist(@RequestBody ReviewVO vo) {
		int result = reviewService.reviewRegist(vo);
		return result; //성공시 1, 실패시 0
	}
	
	
	@RequestMapping("/review_modifyForm")
	public String review_modifyForm(ReviewVO vo) {
		
		System.out.println(vo.toString());
		int result = reviewService.review_modifyForm(vo);
		System.out.println(result+"등록");
		return "redirect:/board/board_detail";
	}
	
	@ResponseBody
	@RequestMapping("/modal_deleteForm")
	public int modal_delete(@RequestParam("rno") int rno) {
		System.out.println("asdasdsa");
		int result = reviewService.modal_deleteForm(rno);
		
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping("/modal_reivew_view")
	public ArrayList<ReviewVO> review_view(@RequestParam("contentId") int contentId){
		System.out.println(contentId);
		return reviewService.review_view(contentId);
	}
}
