package com.zerostress.reply.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.zerostress.command.ReplyVO;
import com.zerostress.util.Criteria;

public interface ReplyMapper {

	public int replyRegist(ReplyVO vo); //댓글등록
	//public ArrayList<ReplyVO> getList(int bno); //목록요청
	public ArrayList<ReplyVO> getList(@Param("cri") Criteria cri, @Param("bno") int bno); //페이징 목록 요청
	public int getTotal(int bno); //댓글 개수
	public int pwCheck(ReplyVO vo); //비밀번호 확인
	public int update(ReplyVO vo); //댓글 수정
	public int delete(ReplyVO vo); //댓글 삭제
}
