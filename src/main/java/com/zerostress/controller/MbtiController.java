package com.zerostress.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zerostress.command.MbtiVO;
import com.zerostress.command.PersonalityVO;
import com.zerostress.userinfo.service.UserInfoService;

@Controller
@RequestMapping("/mbti")
public class MbtiController {
	
	@Autowired
	@Qualifier("userinfoService")
	private UserInfoService userinfoService;
	
	@RequestMapping("/mbti_result")
	public String board_detail() {
		return "mbti/mbti_result";
	}
	
	@RequestMapping("/mbti_board_detail")
	public String mbti_board_detail() {
	    return "board/mbti_board_detail";
	}
	
	@ResponseBody
	@RequestMapping("/mbtiForm")
	public PersonalityVO mbtiForm(@RequestParam("pno") int pno) {
		PersonalityVO vo = userinfoService.mbtiForm(pno);
		return vo;
	}

	@ResponseBody
	@RequestMapping(value="/mypageUpdate",method=RequestMethod.POST)
	public int mypageUpdate(@RequestBody MbtiVO vo, HttpSession session) {
		String userId = (String)session.getAttribute("userId");
		vo.setUserId(userId);
		System.out.println(vo.toString());
		return userinfoService.mypageUpdate(vo);
	}	
}
