package com.gura.spring04;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
/*
 * 컨트롤러 JSON 문자열을 응답하는 여러가지 방법을 알아보자
 * 
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring04.member.dto.MemberDto;
@Controller
public class JsonTestController {
	@RequestMapping("/json01")
	public ModelAndView json01(ModelAndView mView) {
		//응답할 데이터라고 가정
		int num=1;
		String name="김구라";
		String addr="노량진";
		/*
		 * 위의 데이터를 이용해서 아래와 같은 JSON 문자열을 클라이언트에게 응답하는게 목적이다.
		 * {"num":1,"name":"김구라","addr":"노량진"}
		 */
		MemberDto dto=new MemberDto(num,name,addr);
		mView.addObject("dto",dto);
		mView.setViewName("json01");
		return mView;
	}
	/*
	 * 1.jackson-databind 가 pon.xml 에 dependency로 명시 되어 있어야 한다.
	 * 2.servlet-context.xml에 <annotation-driven/> 이 설정되어 있어야 한다.
	 * 3.컨트롤러에 @ResponseBody 어노테이션이 붙어 있어야 한다.
	 * 
	 * 	- 위의 3가지가 설정 되어있을 때 메소드에서
	 * xxxDto,Map,List,List<Map>, List<xxxDto> 형태의 데이터를 리턴해주면
	 * 자동으로 JSON 문자열로 변환이 되어서 응답한다.
	 * 
	 * -java 객체와 JSON 문자열 변환 관계
	 * xxxDto, Map =>{}
	 * List => []
	 * List<xxxDto>, List<Map> => [{},{},{}...]
	 * Map<String, List> => {"key값":[]}
	 */
	@RequestMapping("/json02")
	@ResponseBody
	public MemberDto json02() {
		//응답할 데이터라고 가정
		int num=1;
		String name="김구라";
		String addr="노량진";
		//JSON 으로 응답할 데이터를 dto에 담고
		MemberDto dto=new MemberDto(num,name,addr);
		return dto;
	}
	
	@RequestMapping("/json03")
	@ResponseBody
	public Map<String,Object> json03(){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("num",1);
		map.put("name","김구라");
		map.put("addr","노량진");
		return map;
	}
	
	@RequestMapping("/json04")
	@ResponseBody
		public List<String> json04(){
		List<String> list=new ArrayList<String>();
		list.add("김구라");
		list.add("해골");
		list.add("원숭이");
		return list;
	}
}
