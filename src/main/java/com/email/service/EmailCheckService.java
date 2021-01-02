package com.email.service;

import com.zerostress.command.EmailDTO;
import com.zerostress.command.EmailCheckVO;

public interface EmailCheckService {
	
	public void sendMail(EmailDTO dto);
	
	public void mailStorage(EmailDTO dto);



	public void mailModi(EmailCheckVO emailVO);

	public int mailCheck(EmailCheckVO emailVO);

	public void userEmailCertified(EmailCheckVO emailVO);

	
}

