package com.zerostress.command;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class EmailCheckVO {
	
	private String receiveMail;
	private String message;
	
	
	

}
