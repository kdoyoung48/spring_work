package com.gura.spring05.file.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.gura.spring05.file.dto.FileDto;
import com.gura.spring05.file.service.FileService;

@Controller
public class FileController {
	
	//의존객체 DI
	@Autowired
	private FileService fileService;
	
	//글 목록 요청 처리
	@RequestMapping("/file/list")
	public ModelAndView list(ModelAndView mView,
			HttpServletRequest request) {
		fileService.getList(mView, request);
		mView.setViewName("file/list");
		return mView;
	}
	//파일 업로드 요청처리
	@RequestMapping(value = "/file/private/upload",
			method = RequestMethod.POST)
	public ModelAndView upload(FileDto dto,ModelAndView mView,
			HttpServletRequest request) {
		fileService.uploadFile(dto, mView, request);
		mView.setViewName("file/private/upload");
		return mView;
	}
	
	//파일 업로드폼 요청처리
	@RequestMapping("/file/private/uploadform")
	public String updateform() {
		return "file/private/uploadform";
	}
	
	//파일 다운로드 요청 처리
	@RequestMapping("/file/download")
	public ModelAndView download(@RequestParam int num,
			ModelAndView mView) {
		//mView 에 다운로드 할 파일의 정보를 담고 
		fileService.getFileData(num, mView);
		//view 페이지로 이동해서 다운로드 시켜준다. 
		// @Component("fileDownView") 가 붙어있는 AbstractView 객체를 찾아간다. 
		mView.setViewName("fileDownView");
		return mView;
	}
	//파일 삭제		
	@RequestMapping("/file/private/delete")
	public String delete(@RequestParam int num, HttpServletRequest request) {
		fileService.deleteFile(num, request);
		return "redirect:/file/list.do";	
	}
	
	
	
}

