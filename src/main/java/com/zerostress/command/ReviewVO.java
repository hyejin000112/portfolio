package com.zerostress.command;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReviewVO {
	private int rno;
	private int contentId;
	private String reviewId;
	private String title;
	private String content;
	private String evaluate;
	private Timestamp regDate;
	private Timestamp updateDate;
}
