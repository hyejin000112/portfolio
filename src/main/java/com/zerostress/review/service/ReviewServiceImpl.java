package com.zerostress.review.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.zerostress.command.ReviewVO;
import com.zerostress.review.mapper.ReviewMapper;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	@Qualifier("reviewMapper")
	private ReviewMapper reviewMapper;
	
	@Override
	public int reviewRegist(ReviewVO vo) {
		return reviewMapper.reviewRegist(vo);
	}

	@Override
	public ArrayList<ReviewVO> reviewShow() {
		return reviewMapper.reviewShow();
		
	}

	@Override
	public ReviewVO modal_modify(int rno) {
		// TODO Auto-generated method stub
		return reviewMapper.modal_modify(rno);
	}

	@Override
	public int review_modifyForm(ReviewVO vo) {
		// TODO Auto-generated method stub
		return reviewMapper.review_modifyForm(vo);
	}

	@Override
	public int modal_deleteForm(int rno) {
		
		return reviewMapper.review_deleteForm(rno);
		
	}

	@Override
	public ArrayList<ReviewVO> review_view(int contentId) {
		
		return reviewMapper.review_view(contentId);
	}

}
