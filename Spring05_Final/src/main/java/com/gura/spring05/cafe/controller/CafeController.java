package com.gura.spring05.cafe.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring05.cafe.dto.CafeCommentDto;
import com.gura.spring05.cafe.dto.CafeDto;
import com.gura.spring05.cafe.service.CafeService;

@Controller
public class CafeController {
	//의존객체 DI
	@Autowired
	private CafeService service;
	
	@RequestMapping("/cafe/ajax_comment_list")
	public ModelAndView ajaxCommentList(HttpServletRequest request,
			ModelAndView mView) {
		service.moreCommentList(request);
		mView.setViewName("cafe/ajax_comment_list");
		return mView;
	}
	
	//댓글 수정 ajax 요청에 대한 요청 처리 
	@RequestMapping(value = "/cafe/private/comment_update", 
			method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> commentUpdate(CafeCommentDto dto){
		//댓글을 수정 반영하고 
		service.updateComment(dto);
		//JSON 문자열을 클라이언트에게 응답한다.
		Map<String, Object> map=new HashMap<>();
		map.put("num", dto.getNum());
		map.put("content", dto.getContent());
		return map;
	}
	//댓글 삭제기능
	@RequestMapping("/cafe/private/comment_delete")
	public ModelAndView commentDelete(HttpServletRequest request,
			ModelAndView mView, @RequestParam int ref_group) {
		service.deleteComment(request);
		mView.setViewName("redirect:/cafe/detail.do?num="+ref_group);
		return mView;
	}
	
	//새 댓글 저장 요청 처리
	@RequestMapping(value = "/cafe/private/comment_insert", 
			method = RequestMethod.POST)
	public String commentInsert(HttpServletRequest request,
			@RequestParam int ref_group) {
		//새 댓글을 저장하고
		service.saveComment(request);
		//글 자세히 보기로 다시 리다일렉트 이동 시킨다.
		//ref_group 은 원래 자세히 보기 했던 글 번호
		return "redirect:/cafe/detail.do?num="+ref_group;
	}
	
	@RequestMapping("/cafe/private/delete")
	public String delete(@RequestParam int num) {
		service.deleteContent(num);
		return "cafe/private/delete";
	}
	@RequestMapping("/cafe/private/updateform")
	public ModelAndView updateform(@RequestParam int num,
			ModelAndView mView) {
		service.getDetail(num, mView);
		mView.setViewName("cafe/private/updateform");
		return mView;
	}
	@RequestMapping("/cafe/private/update")
	public String update(@ModelAttribute("dto") CafeDto dto) {
		service.updateContent(dto);
		return "cafe/private/update";
	}
	
	@RequestMapping("/cafe/detail")
	public ModelAndView detail(@RequestParam int num, ModelAndView mView) {
		//자세히 보여줄 글번호가 파라미터로 넘어온다.
		service.getDetail(num, mView);
		//view page 로 forward 이동해서 응답
		mView.setViewName("cafe/detail");
		return mView;
	}
	
	//글 목록 요청처리
	@RequestMapping("/cafe/list")
	public ModelAndView list(ModelAndView mView, 
			HttpServletRequest request) {
		
		service.getList(mView, request);
		
		mView.setViewName("cafe/list");
		return mView;
	}
	
	//카페 새글 저장 요청 처리
	@RequestMapping(value = "/cafe/private/insert", 
			method = RequestMethod.POST)
	public String insert(CafeDto dto, HttpSession session) {
		//글작성자는 세션에서 얻어내서
		String id=(String)session.getAttribute("id");
		//dto 에 담는다 
		dto.setWriter(id);
		//서비스를 통해서 새글을 DB 에저장
		service.saveContent(dto);
		
		return "cafe/private/insert";
	}
	
	//카페 새 글쓰기 요청 처리
	@RequestMapping("/cafe/private/insertform")
	public String insertform() {
		
		// /WEB-INF/views/    cafe/private/insertform      .jsp 
		return "cafe/private/insertform";
	}
}