package com.zerostress.qna.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zerostress.command.QnAVO;
import com.zerostress.qna.mapper.QnAMapper;
import com.zerostress.util.Criteria;

@Service("qnaService")
public class QnAServiceImpl implements QnAService {
	
	@Autowired
	private QnAMapper qnaMapper;

	@Override
	public void getRegist(QnAVO vo) {
		
		qnaMapper.getRegist(vo);
	}

	@Override
	public ArrayList<QnAVO> getList(Criteria cri) {
		
		return qnaMapper.getList(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		
		return qnaMapper.getTotal(cri);
	}

	@Override
	public QnAVO getContent(int bno) {
		
		return qnaMapper.getContent(bno);
	}

	@Override
	public int getUpdate(QnAVO vo) {
		
		return qnaMapper.getUpdate(vo);
	}

	@Override
	public int getDelete(int bno) {
		
		return qnaMapper.getDelete(bno);
	}


}
