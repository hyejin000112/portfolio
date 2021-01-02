package com.zerostress.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zerostress.command.MbtiVO;
import com.zerostress.command.UserInfoVO;
import com.zerostress.userinfo.service.UserInfoService;

@Controller
public class UserInfoController {


	@Autowired
	@Qualifier("userinfoService")
	private UserInfoService userinfoService;
		
	//회원가입->id중복확인
	@ResponseBody
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	public int userIdCheck(@RequestBody UserInfoVO vo) {

		//System.out.println(vo.toString());

		int result = userinfoService.idCheck(vo);
		//System.out.println("아이디체크"+result);

		return result;
	}

	//회원가입
	@RequestMapping(value="/users/joinForm",method=RequestMethod.POST)
	public String joinUser(UserInfoVO vo, RedirectAttributes RA) {
		vo.setStatus("default");
		System.out.println(vo.toString());
		int result = userinfoService.join(vo);
		
		if(result==1) {
			RA.addFlashAttribute("msg", "회원가입되었습니다");
		} else {
			RA.addFlashAttribute("msg", "회원가입에 실패했습니다");
		}
		return "redirect:/";

	}
	
	@RequestMapping("/users/user_mypage")
	public String user_mypage() {

		return "/users/user_mypage";
	}

	//로그아웃
	@RequestMapping("/users/userLogout")
	public String userLogout(HttpSession session, RedirectAttributes RA) {

		session.invalidate(); //세션정보 삭제
		RA.addFlashAttribute("msg", "로그아웃되었습니다");

		return "redirect:/";
	}




	//회원정보수정
	@RequestMapping(value="/users/updateForm", method=RequestMethod.POST)
	public String update(UserInfoVO vo, HttpSession session, RedirectAttributes RA) {
		System.out.println("업데이트폼나와라");
		String userId = (String)session.getAttribute("userId");
		vo.setUserId(userId);
		System.out.println(vo.toString());
		System.out.println("유저아이디"+userId);
		int result = userinfoService.userCheck(vo);
		System.out.println("업데이트"+result);

		if(result == 1) {
			userinfoService.update(vo);
			RA.addFlashAttribute("msg", "회원정보가 수정되었습니다");
			return "redirect:/users/user_mypage"; 
		} else {
			RA.addFlashAttribute("msg", "회원정보 수정에 실패했습니다");
			return "redirect:/users/user_mypage";
		}
		
	}
	
	
	//회원정보-pw수정
		@ResponseBody
		@RequestMapping(value="/users/pwUpdate", method=RequestMethod.POST)
		public int updatePw(@RequestBody UserInfoVO vo, HttpSession session, RedirectAttributes RA) {
			System.out.println(vo.toString());
			String userId = (String)session.getAttribute("userId");
			System.out.println("유저아이디"+userId);
			int result = userinfoService.userCheck(vo);
			System.out.println("업데이트"+result);

			if(result == 1) {
				session.setAttribute("userId",vo.getUserId());
				RA.addFlashAttribute("msg", "비밀번호가 수정되었습니다");
				return userinfoService.pwUpdate(vo);
			} else {
				RA.addFlashAttribute("msg", "비밀번호 수정에 실패했습니다");
				return 0;
			}

		}
	

	//회원탈퇴->pw확인
	@ResponseBody
	@RequestMapping(value="/users/pwCheck", method=RequestMethod.POST)
	public int userPwCheck(@RequestBody UserInfoVO vo, HttpSession session) {
		String userId = (String)session.getAttribute("userId");
		int result = userinfoService.pwCheck(vo);
		System.out.println("pw확인 : "+result);

		return result;
	}

	//회원탈퇴
	@RequestMapping(value="/users/deleteForm", method=RequestMethod.POST)
	public String deleteUser(UserInfoVO vo, HttpSession session, RedirectAttributes RA) {

		String userId = (String)session.getAttribute("userId");

		int result = userinfoService.delete(userId);

		if(result==1) {
			session.invalidate();
			RA.addFlashAttribute("msg", "회원탈퇴되었습니다");
		} else {
			RA.addFlashAttribute("msg", "회원탈퇴에 실패했습니다");
		}

		return "redirect:/";
	}

	//카카오톡 회원가입 화면
	@RequestMapping("/users/kakao_regist")
	public String kakao_regist() {
		return "users/kakao_regist";
	}

	//일반 로그인
	@RequestMapping(value="/users/loginForm", method=RequestMethod.POST)
	public String userJoin(UserInfoVO vo, Model model, HttpSession session, RedirectAttributes RA) {
		
		vo.setStatus("default");
		int result = userinfoService.userStatusCheck(vo);
		if(result == 1) {
			int result2 = userinfoService.certification(vo.getUserId());
			session.setAttribute("userId",vo.getUserId());
			if(result2 == 0) {
				RA.addFlashAttribute("msg", "로그인되었습니다. 이메일인증이 필요합니다.");
				String receiveMail = userinfoService.receiveMail(vo.getUserId());
				RA.addFlashAttribute("receiveMail",receiveMail);
				return "redirect:/email/write";
			} else {
				session.setAttribute("EmailCheck", "1");
				RA.addFlashAttribute("msg", "로그인되었습니다.");
				return "redirect:/";
			}
		} else {
			RA.addFlashAttribute("msg", "로그인에 실패했습니다");
			return "redirect:/";
		}
	}

	//카카오톡 로그인
	@RequestMapping(value="/users/kakaoLoginForm", method=RequestMethod.POST)
	public String kakaoJoin(UserInfoVO vo, Model model, HttpSession session, RedirectAttributes RA) {
		vo.setStatus("kakao");
		System.out.println(vo.toString());
		int result = userinfoService.kakaoStatusCheck(vo);
		System.out.println(result);

		if(result == 1) {
			session.setAttribute("userId",vo.getUserId());
			RA.addFlashAttribute("msg", "카카오톡계정으로 로그인되었습니다");
			return "redirect:/";
		} else {
			userinfoService.kakaoJoin(vo);
			model.addAttribute("vo",vo);
			return "users/kakao_regist";
		}
	}

	//카카오톡계정등록
	@RequestMapping(value="users/kakaoRegistForm", method=RequestMethod.POST)
	public String kakaoRegist(UserInfoVO vo, HttpSession session, RedirectAttributes RA) {
		System.out.println(vo.toString());
		
		int result = userinfoService.kakaoRegist(vo);
		
		if(result==1) {
			session.setAttribute("userId", vo.getUserId());
			RA.addFlashAttribute("msg", "카카오톡 계정으로 로그인되었습니다");
			
		} else {
			RA.addFlashAttribute("msg", "카카오톡 계정으로 로그인하는데 실패했습니다");
		}
		
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping("/users/mypageInfo") 
	public MbtiVO mypageInfo(HttpSession session) {
		String userId = (String)session.getAttribute("userId");
		MbtiVO vo = userinfoService.mypageInfo(userId);
		return vo;
	}
	
	
	@ResponseBody
	@RequestMapping("/users/userInfo") 
	public UserInfoVO userInfo(HttpSession session) {
		System.out.println("userInfo");
		String userId = (String)session.getAttribute("userId");
		UserInfoVO vo = userinfoService.info(userId);
		return vo;
	}
	
	//이메일확인
	@ResponseBody
	@RequestMapping(value="/users/emailCheck", method=RequestMethod.POST)
	public int emailCheck(@RequestBody UserInfoVO vo, HttpSession session) {
		System.out.println(123131);
		int result = userinfoService.emailCheck(vo.getUserEmail());
		System.out.println("email확인 : "+result);

		return result;
	}
	
	
}
