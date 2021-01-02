package com.zerostress.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//스프링 인터셉터 클래스 - HandlerInterceptorAdapter 클래스를 상속받습니다.
public class UserInterceptor extends HandlerInterceptorAdapter{

	//prehandle메서드는 컨트롤러 전에 요청을 가로채 실행됩니다.
	//true를 반환하면 컨트롤러를 실행, false를 반환하면 컨트롤러의 실행을 막음
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//세션을 얻는다.
		HttpSession session = request.getSession();
		String userId=(String)session.getAttribute("userId");
		if(userId == null) {
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write("<script>");
			response.getWriter().write("alert('로그인을 해주세요.');");
			response.getWriter().write("history.go(-1);");
			response.getWriter().write("</script>");
			return false; //컨트롤러를 실행하지 않음
		} else {
			return true; //컨트롤러를 실행함
		}
	}

}
