package com.zerostress.reply.service;

import java.util.ArrayList;

import com.zerostress.command.ReplyVO;
import com.zerostress.util.Criteria;

public interface ReplyService {

	public int replyRegist(ReplyVO vo); //댓글 등록
	public ArrayList<ReplyVO> getList(Criteria cri, int bno); //페이징 목록 요청
	public int getTotal(int bno); //댓글 개수
	public int pwCheck(ReplyVO vo); //비밀번호 확인
	public int update(ReplyVO vo); //댓글 수정
	public int delete(ReplyVO vo); //댓글 삭제
}
