package com.gura.spring03;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String home(HttpServletRequest request) {
		//DB에서 불러온 공지 사항 목록이라고 가정하자
		List<String> noticeList=new ArrayList<String>();
		noticeList.add("불금");
		noticeList.add("놀아요");
		noticeList.add("신나신나");
		noticeList.add("훠우..");
		//Model(데이터) 를 request scope 에 담는다.
		request.setAttribute("noticeList", noticeList);
		//view page로 forward 이동
		return "home";
	}

}
