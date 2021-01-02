package com.zerostress.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class EmailInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String EmailCheck = (String) session.getAttribute("EmailCheck");
		if(EmailCheck == null) {
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write("<script>");
			response.getWriter().write("alert('이메일 인증을 해주세요.');");
			response.getWriter().write("history.go(-1);");
			response.getWriter().write("</script>");
			return false; //컨트롤러를 실행하지 않음
		} else {
			return true; //컨트롤러를 실행함
		}
	}
}
