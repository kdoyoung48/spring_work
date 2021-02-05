package com.gura.spring05.file.dao;

import java.util.List;

import com.gura.spring05.file.dto.FileDto;

public interface FileDao {
	//파일 업로드 //추가
	public void insert(FileDto dto);
	//파일 정보 삭제
	public void delete(int num);
	//파일 하나의 정보를 리턴
	public FileDto getData(int num);
	//파일 목록 얻어오기(페이징처리_검색 키워드)
	public List<FileDto> getList(FileDto dto);
	//글의 갯수
	public int getCount(FileDto dto);
	
}
