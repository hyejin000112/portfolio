package com.email.service;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.zerostress.command.EmailDTO;
import com.zerostress.command.EmailCheckVO;
import com.zerostress.email.mapper.EmailMapper;

@Service("emailService2")//서비스 빈으로 등록
public class EmailCheckServiceImpl implements EmailCheckService{
	
	@Autowired
	@Qualifier("emailMapper")
	private EmailMapper emailMapper;
	
	@Autowired
	@Qualifier("mailSender")
	JavaMailSenderImpl mailSender; //root-contenxt.xml에 설정한 bean, 의존성을 주입
	
	public void sendMail(EmailDTO dto) {
		try {

			MimeMessage msg = mailSender.createMimeMessage();
			
			msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getReceiveMail()));
			msg.addFrom(new InternetAddress[] { new InternetAddress(dto.getSenderMail(), dto.getSenderName()) });
			msg.setSubject(dto.getSubject(), "utf-8");
			//msg.setText("<html><button type='button'>12</button></html>","utf-8",contentType);
			msg.setContent("<html><body>"
		               + "<a style = 'display:inline-blick;  text-decoration : none;' "
		               + "href='http://3.35.85.254:8181/zerostress/email/certified?certifiedNum="+dto.getMessage()+"&certifiedEmail="+dto.getReceiveMail()+"'>"
		               + "<p style = 'background-color : #789e81; width:300px; height:50px; border-radius: 10px; color:white; font-size:30px; text-decoration : none; '>"
		               + "이메일 인증하기</p></a></body></html>","text/html;charset=euc-kr");
			//dto.getMessage()
			mailSender.send(msg);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void mailStorage(EmailDTO dto) {
		
		emailMapper.mailStorage(dto);
	}


	@Override
	public int mailCheck(EmailCheckVO emailVO) {
		int CheckNum = emailMapper.mailCheck(emailVO);
		
		return CheckNum;
	}


	@Override
	public void mailModi(EmailCheckVO emailVO) {
		emailMapper.mailModi(emailVO);
		
	}


	@Override
	public void userEmailCertified(EmailCheckVO emailVO) {
		emailMapper.userEmailCertified(emailVO);
		
	}


	
}
