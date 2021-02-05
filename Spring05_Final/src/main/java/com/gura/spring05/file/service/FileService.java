package com.gura.spring05.file.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;
import com.gura.spring05.file.dto.FileDto;



public interface FileService {
	//파일 목록을 얻어오고 페이징 처리에 필요한 값을 ModelAndView 객체에 담아주는 메소드
	public void getList(ModelAndView mView,HttpServletRequest request);
	//파일을 업로드 하는 메소드
	public void uploadFile(FileDto dto, ModelAndView mView,HttpServletRequest request);
	//파일을 다운로드 하는 메소드
	public void getFileData(int num, ModelAndView mView);
	//파일을 삭제하는 메소드
	public void deleteFile(int num, HttpServletRequest request);
	
}
