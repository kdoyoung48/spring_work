package com.gura.spring05.file.service;

import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring05.file.dto.FileDto;
import com.gura.spring05.exception.NotAllowException;
import com.gura.spring05.file.dao.FileDao;

@Service
public class FileServiceImpl implements FileService{
	
	@Autowired
	private FileDao fileDao;

	@Override
	public void getList(ModelAndView mView, HttpServletRequest request) {
		//한 페이지에 몇개씩 표시할 것인지
		final int PAGE_ROW_COUNT=5;
		//하단 페이지를 몇개씩 표시할 것인지
		final int PAGE_DISPLAY_COUNT=5;
		
		//보여줄 페이지의 번호를 일단 1이라고 초기값 지정
		int pageNum=1;
		//페이지 번호가 파라미터로 전달되는지 읽어와 본다.
		String strPageNum=request.getParameter("pageNum");
		//만일 페이지 번호가 파라미터로 넘어 온다면
		if(strPageNum != null){
			//숫자로 바꿔서 보여줄 페이지 번호로 지정한다.
			pageNum=Integer.parseInt(strPageNum);
		}
		
		//보여줄 페이지의 시작 ROWNUM
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		//보여줄 페이지의 끝 ROWNUM
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		
		/*
			[ 검색 키워드에 관련된 처리 ]
			-검색 키워드가 파라미터로 넘어올수도 있고 안넘어 올수도 있다.		
		*/
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
		//만일 키워드가 넘어오지 않는다면 
		if(keyword==null){
			//키워드와 검색 조건에 빈 문자열을 넣어준다. 
			//클라이언트 웹브라우저에 출력할때 "null" 을 출력되지 않게 하기 위해서  
			keyword="";
			condition=""; 
		}
		
		//특수기호를 인코딩한 키워드를 미리 준비한다. 
		String encodedK=URLEncoder.encode(keyword);
		
		//startRowNum 과 endRowNum  을 FileDto 객체에 담고
		FileDto dto=new FileDto();
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		
		//ArrayList 객체의 참조값을 담을 지역변수를 미리 만든다.
		List<FileDto> list=null;
		//전체 row 의 갯수를 담을 지역변수를 미리 만든다.
		int totalRow=0;
		//만일 검색 키워드가 넘어온다면 
		if(!keyword.equals("")){
			//검색 조건이 무엇이냐에 따라 분기 하기
			if(condition.equals("title_content")){//제목 + 내용 검색인 경우
				//검색 키워드를 FileDto 에 담아서 전달한다.
				dto.setTitle(keyword);
				dto.setOrgFileName(keyword);	
			}else if(condition.equals("title")){ //제목 검색인 경우
				dto.setTitle(keyword);			
			}else if(condition.equals("writer")){ //작성자 검색인 경우
				dto.setWriter(keyword);	
			} // 다른 검색 조건을 추가 하고 싶다면 아래에 else if() 를 계속 추가 하면 된다.
		}
		//글목록 얻어오기
		list=fileDao.getList(dto);
		//글의 갯수
		totalRow=fileDao.getCount(dto);
		
		//하단 시작 페이지 번호 
		int startPageNum = 1 + ((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		//하단 끝 페이지 번호
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		
		//전체 페이지의 갯수 구하기
		int totalPageCount=(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		//끝 페이지 번호가 이미 전체 페이지 갯수보다 크게 계산되었다면 잘못된 값이다.
		if(endPageNum > totalPageCount){
			endPageNum=totalPageCount; //보정해 준다. 
		}
		
		//view page 에서 필요한 내용을 ModelAndView 객체에 담아준다
		mView.addObject("list", list);
		mView.addObject("pageNum", pageNum);
		mView.addObject("startPageNum", startPageNum);
		mView.addObject("endPageNum", endPageNum);
		mView.addObject("totalPageCount", totalPageCount);
		mView.addObject("condition", condition);
		mView.addObject("keyword", keyword);
		mView.addObject("encodedK", encodedK);
		mView.addObject("totalRow", totalRow);

	}

	@Override
	public void uploadFile(FileDto dto,ModelAndView mView, HttpServletRequest request) {
		//업로드된 파일의 정보를 가지고 있는 MultipartFile 객체의 참조값 얻어오기 
		MultipartFile myFile=dto.getMyFile();
		//원본 파일명
		String orgFileName=myFile.getOriginalFilename();
		//파일의 크기
		long fileSize=myFile.getSize();
		
		// webapp/upload 폴더 까지의 실제 경로(서버의 파일시스템 상에서의 경로)
		String realPath=request.getServletContext().getRealPath("/upload");
		//저장할 파일의 상세 경로
		String filePath=realPath+File.separator;
		//디렉토리를 만들 파일 객체 생성
		File upload=new File(filePath);
		if(!upload.exists()) {//만일 디렉토리가 존재하지 않으면 
			upload.mkdir(); //만들어 준다.
		}
		//저장할 파일 명을 구성한다.
		String saveFileName=
				System.currentTimeMillis()+orgFileName;
		try {
			//upload 폴더에 파일을 저장한다.
			myFile.transferTo(new File(filePath+saveFileName));
			System.out.println(filePath+saveFileName);
		}catch(Exception e) {
			e.printStackTrace();
		}
		//dto 에 업로드된 파일의 정보를 담는다.
		String id=(String)request.getSession().getAttribute("id");
		dto.setWriter(id); //세션에서 읽어낸 파일 업로더의 아이디 
		dto.setOrgFileName(orgFileName);
		dto.setSaveFileName(saveFileName);
		dto.setFileSize(fileSize);
		//fileDao 를 이용해서 DB 에 저장하기
		fileDao.insert(dto);
		//view 페이지에서 사용할 모델 담기 
		mView.addObject("dto", dto);	
		
	}

	@Override
	public void deleteFile(int num, HttpServletRequest request) {
		//삭제할 파일의 정보 얻어오기 
		FileDto dto=fileDao.getData(num);
		//로그인된 아이디 읽어오기
		String id=(String)request.getSession().getAttribute("id");
		//로그인된 아이디와 글의 작성자가 다르면
		if(!id.equals(dto.getWriter())) {
			//예외 발생 시키기
			throw new NotAllowException("님의 파일은 삭제 할수 없습니다.");
		}
		//파일 시스템에서 파일 삭제
		String saveFileName=dto.getSaveFileName();
		String path=request.getServletContext().getRealPath("/upload")+
				File.pathSeparator+saveFileName;
		new File(path).delete();
		//DB 에서 파일 정보 삭제 
		fileDao.delete(num);
		
	}

	@Override
	public void getFileData(int num, ModelAndView mView) {
		//fileDao 를 이용해서 파일 정보를 얻어온 다음
		FileDto dto=fileDao.getData(num);
		//mView 객체에 담는다.
		mView.addObject("dto", dto);

	}

	
	
}
