package com.gura.spring05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping("/home2")
	public String home2() {
		
		return "home2";
	}
	
	@RequestMapping("/home3")
	public String home3() {
		
		return "home3";
	}
	
	@RequestMapping("/home4")
	public String home4() {
		
		return "home4";
	}
	
	@RequestMapping("/home5")
	public String home5() {
		
		return "home5";
	}
	@RequestMapping("/home6")
	public String home6() {
		
		return "home6";
	}
	
	@RequestMapping("/aboutus")
	public String aboutus() {
		
		return "aboutus";
	}
	@RequestMapping("/home7")
	public String home7() {
		
		return "home7";
	}
}