package com.zerostress.command;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class QnAVO {

	private int bno;
	private String writer;
	private String title;
	private String content;
	private Timestamp regDate;
	private Timestamp updateDate;
}
