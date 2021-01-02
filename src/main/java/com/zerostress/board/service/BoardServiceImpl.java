package com.zerostress.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zerostress.board.mapper.BoardMapper;
import com.zerostress.command.RecommendVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
   
   @Autowired
   private BoardMapper boardMapper;

   @Override
   public RecommendVO recommend(String title) {
      RecommendVO vo = boardMapper.recommend(title);
      return vo;
   }


}