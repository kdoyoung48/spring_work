package com.gura.spring01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonController {
	@RequestMapping("/person.do")
	public String Person(HttpServletRequest request) {
		//view page 에 전달할  data (Model)
		String personToday="나나";
		request.setAttribute("personToday", personToday);
		//forward 이동할 view page 의 위치를 리턴해준다.
		return "person"; // /WEB-INF/view/person.jsp
	}
}
