package com.zerostress.controller;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zerostress.util.Criteria;
import com.zerostress.util.PageVO;
import com.zerostress.command.QnAVO;
import com.zerostress.qna.service.QnAService;

@Controller
@RequestMapping("/qna")
public class QnAController {

	@Autowired
	@Qualifier("qnaService")
	private QnAService qnaService;

	//목록화면
	@RequestMapping("/qna_list")
	public String qna_list(Model model, Criteria cri) {

		//검색페이징
		ArrayList<QnAVO> list = qnaService.getList(cri);
		int total = qnaService.getTotal(cri);
		PageVO pageVO = new PageVO(cri, total);
		System.out.println(cri.toString());

		model.addAttribute("qna_list", list);
		model.addAttribute("pageVO", pageVO);

		return "qna/qna_list";
	}

	//등록화면
	@RequestMapping("/qna_regist")
	public String qna_regist() {
		return "qna/qna_regist";
	}

	//등록처리
	@RequestMapping(value="/qnaForm", method=RequestMethod.POST)
	public String qnaRegist(QnAVO vo, RedirectAttributes RA) {
		qnaService.getRegist(vo);
		RA.addFlashAttribute("msg", "정상 등록되었습니다.");
		return "redirect:/qna/qna_list";
	}

	//상세화면, 수정화면
	@RequestMapping({"/qna_detail", "/qna_modify"})
	public void qna_detailModify(@RequestParam("bno") int bno, Model model) {
		model.addAttribute("bno",bno);
		model.addAttribute("vo", qnaService.getContent(bno));
		
	}

	//업데이트
	@RequestMapping("/getUpdate")
	public String getUpdate(QnAVO vo, RedirectAttributes RA) {

		int updateResult = qnaService.getUpdate(vo);

		if(updateResult==1) {
			RA.addFlashAttribute("msg", "게시글 수정이 정상 처리되었습니다");
		} else {
			RA.addFlashAttribute("msg", "게시글 수정에 실패했습니다");
		}

		return "redirect:/qna/qna_list";
	}

	//삭제
	@RequestMapping("/getDelete")
	public String getDelete(@RequestParam("bno") int bno, RedirectAttributes RA) {

		int deleteResult = qnaService.getDelete(bno);
		

		if(deleteResult==1) {
			RA.addFlashAttribute("msg", "게시글을 삭제했습니다");
		} else {
			RA.addFlashAttribute("msg", "게시글을 삭제하는데 실패했습니다");
		}
		return "redirect:/qna/qna_list";

	}
}



