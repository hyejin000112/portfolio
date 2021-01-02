package com.email.mail;

import java.util.UUID;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.zerostress.userinfo.service.UserInfoService;

@Service("emailService")
public class EmailServiceImpl implements EmailService {

	@Autowired
	@Qualifier("senderMail")
	JavaMailSender senderMail;
	
	@Autowired
	UserInfoService userinfoService;

	
	@Override
	public void sendMailImpl(EmailVO vo) {

	
		
		UUID uuid = UUID.randomUUID();
		String uuids = uuid.toString().substring(27);
		System.out.println(uuids);
		
		userinfoService.pwFindUpdate(uuids, vo.getGetMail());
		
		try {
			// 이메일 객체
			MimeMessage mmsg = senderMail.createMimeMessage();

			// 받는 사람을 설정 (수신자, 받는사람의 이메일 주소 객체를 생성해서 수신자 이메일주소를 담음)
			mmsg.addRecipient(RecipientType.TO, new InternetAddress(vo.getGetMail()));

			/*
			 * createMimeMessage() : MimeMessage객체를 생성시킴 (이것을 이용해서 메시지를 구성한 뒤 메일 발송)
			 * addRecipient() : 메시지의 발신자를 설정 InternetAddress() : 이메일 주소 getReceiveMail() :
			 * 수신자 이메일 주소
			 */

			// 보내는 사람(이메일주소+이름)
			// (발신자, 보내는 사람의 이메일 주소와 이름을 담음)
			// 이메일 발신자
			vo.setHomeName("ZeroStress");
			vo.setHomeMail("sssunhye1023@gmail.com");

			mmsg.addFrom(new InternetAddress[] { new InternetAddress(vo.getHomeMail(), vo.getHomeName()) });

			vo.setTitle("ZeroStress에서 보내는 임시 비밀번호 발급 메일입니다");
			vo.setContent(vo.getGetMail()+"님의 비밀번호는"+uuids+"입니다");
			
			
			
			// 이메일 제목 (인코딩을 해야 한글이 깨지지 않음)
			mmsg.setSubject(vo.getTitle(), "utf-8");
			// 이메일 본문 (인코딩을 해야 한글이 깨지지 않음)
			mmsg.setText(vo.getContent(), "utf-8");

			// 이메일 보내기
			senderMail.send(mmsg);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
