package com.zerostress.qna.service;

import java.util.ArrayList;

import com.zerostress.command.QnAVO;
import com.zerostress.util.Criteria;

public interface QnAService {
	
	public void getRegist(QnAVO vo); //글 등록
	public ArrayList<QnAVO> getList(Criteria cri);//글 목록
	public int getTotal(Criteria cri); //총 게시글 수
	public QnAVO getContent(int bno); //상세화면
	public int getUpdate(QnAVO vo);
	public int getDelete(int bno);
}
