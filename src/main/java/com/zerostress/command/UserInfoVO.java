package com.zerostress.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserInfoVO {

	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private String userAddrZipNum;
	private String userAddrBasic;
	private String userAddrDetail;
	private Timestamp regdate;
	private String EmailCheck;
	private String status;
	
}
