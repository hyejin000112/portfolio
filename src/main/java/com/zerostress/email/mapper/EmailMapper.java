package com.zerostress.email.mapper;

import com.zerostress.command.EmailDTO;
import com.zerostress.command.EmailCheckVO;

public interface EmailMapper {
	//public void sendMail(EmailDTO dto);
	
	public void mailStorage(EmailDTO dto);

	public int mailCheck(EmailCheckVO emailVO);

	public void mailModi(EmailCheckVO emailVO);

	public void userEmailCertified(EmailCheckVO emailVO);
}
