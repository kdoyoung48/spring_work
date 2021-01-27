package com.gura.spring05.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.gura.spring05.users.dto.UsersDto;

public interface UsersService {
	//회원 가입 처리를 하는 메소드
	public void addUser(UsersDto dto);
	//아이디가 존재하는지 여부를 리턴하는 메소드
	public boolean isExistId(String inputId);
	//로그인폼에 관련된 처리를 하는 메소드
	public void loginformLogic(HttpServletRequest request,
			ModelAndView mView);
	//로그인 관련 처리를 하는 메소드
	public void loginLogic(HttpServletRequest request,HttpServletResponse response);
}
