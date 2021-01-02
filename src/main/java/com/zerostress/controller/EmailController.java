package com.zerostress.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.email.mail.EmailService;
import com.email.mail.EmailVO;
import com.email.service.EmailCheckService;
import com.zerostress.command.EmailCheckVO;
import com.zerostress.command.EmailDTO;

@Controller // 컨트롤러 어노테이션 선언
@RequestMapping("/email") // 공통적인 매핑 주소
public class EmailController {
 
    @Autowired
    EmailService emailService; // 서비스를 호출하기위한 의존성 주입

	@Autowired
	EmailCheckService emailService2;
	
    @RequestMapping("/pwFindMail") // 이메일 쓰기를 누르면 이 메소드로 맵핑되어서
    public String write() {
        return "/email/pwFindMail"; // 다시 write jsp 페이지로 이동하고 jsp페이지에서 내용을 다 채운 뒤에 확인 버튼을 누르면 send.do로 넘어감
    }
    
    @RequestMapping("/sendMail") // 확인 (메일발송) 버튼을 누르면 맵핑되는 메소드
    public String sendMail(@ModelAttribute EmailVO vo, Model model) {
    			
        try {

            emailService.sendMailImpl(vo);
            
            model.addAttribute("Email", vo);
            
            // vo (메일관련 정보)를 sendMail에 저장함
            model.addAttribute("message", "이메일이 발송되었습니다."); 
            // 이메일이 발송되었다는 메시지를 출력시킨다.
 
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("message", "이메일 발송 실패..."); 
            // 이메일 발송이 실패되었다는 메시지를 출력
        }
        return "/email/pwFindMail"; // 실패했으므로 write 페이지로 이동함
    }
    
    
	@RequestMapping("/write")
	public String write_go() {
		return "/email/write";
	}
	
	@ResponseBody
	@RequestMapping(value = "/send.do" , method=RequestMethod.POST) // 확인 (메일발송) 버튼을 누르면 맵핑되는 메소드
	public String send(@RequestBody EmailDTO dto) {
		try {
			System.out.println("이메일보내지나?");
			
			emailService2.sendMail(dto); // dto (메일관련 정보)를 sendMail에 저장함
			emailService2.mailStorage(dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return "/email/write"; // 실패했으므로 다시 write jsp 페이지로 이동함
	}
	
	
	@RequestMapping("/certified")
	public String certified(@RequestParam("certifiedNum") String certifiedNum ,@RequestParam("certifiedEmail") String certifiedEmail, HttpSession session){
		
		System.out.println(certifiedEmail+"\n" +certifiedNum);
		
		EmailCheckVO EmailCheckVO = new EmailCheckVO(certifiedEmail,certifiedNum);
		
		
		int CheckNum = emailService2.mailCheck(EmailCheckVO);
		System.out.println(CheckNum);
		if(CheckNum==1) {
			emailService2.mailModi(EmailCheckVO);
			emailService2.userEmailCertified(EmailCheckVO);
			System.out.println("인증 됨");
		}else {
			System.out.println("인증 안됨.");
		}
		return "redirect:/";
		
		
	}
    
    
}
