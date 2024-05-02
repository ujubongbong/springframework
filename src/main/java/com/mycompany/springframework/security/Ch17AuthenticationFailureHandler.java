package com.mycompany.springframework.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch17AuthenticationFailureHandler 
	extends SimpleUrlAuthenticationFailureHandler {
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {

		log.info("실행");
		// 로그인 실패 후에 이동할 url
		setDefaultFailureUrl("/ch17/loginForm");
		// 기본 설정을 적용하기 위해 상위 메서드 호출
		super.onAuthenticationFailure(request, response, exception);
	}
}
