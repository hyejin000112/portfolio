package com.zerostress.command;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MbtiVO {
	private String userId;
	private int pno;
	private String type;
	private String explain1;
	private String image1;
	private String image2;
	private String tour1;
	private String tour2;
	private String content1;
	private String content2;
	private String activity1;
	private String activity2;
	private Timestamp regdate;
}
