package com.zerostress.review.mapper;

import java.util.ArrayList;

import com.zerostress.command.ReviewVO;

public interface ReviewMapper {
	public int reviewRegist(ReviewVO vo);
	public ArrayList<ReviewVO> reviewShow();
	public ReviewVO modal_modify(int rno);
	public int review_modifyForm(ReviewVO vo);
	public int review_deleteForm(int rno);
	public ArrayList<ReviewVO> review_view(int contentId);
}