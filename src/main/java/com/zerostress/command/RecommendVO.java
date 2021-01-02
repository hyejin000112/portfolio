package com.zerostress.command;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class RecommendVO {

   private int bno;
   private String title;
   private String content;
   private String address;
   private String phonenum;
   private String time;
   private String price;
   private Timestamp regdate;
}