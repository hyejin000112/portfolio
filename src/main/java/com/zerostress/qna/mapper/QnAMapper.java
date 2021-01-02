package com.zerostress.qna.mapper;

import java.util.ArrayList;
import com.zerostress.command.QnAVO;
import com.zerostress.util.Criteria;

public interface QnAMapper {

	public void getRegist(QnAVO vo);
	public ArrayList<QnAVO> getList(Criteria cri);
	public int getTotal(Criteria cri); //개수
	public QnAVO getContent(int bno);
	public int getUpdate(QnAVO vo); //수정
	public int getDelete(int bno); //삭제
}
